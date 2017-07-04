# == Schema Information
#
# Table name: publications
#
#  id         :integer          not null, primary key
#  logo       :string           not null
#  name       :string           not null
#  site_type  :string
#  editor     :string           not null
#  owner      :string
#  url        :string           not null
#  year       :date             not null
#  creator    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Publication < ApplicationRecord

  def self.wiki_search(name)
    page = Wikipedia.find(name)
    params = {
      name: page.title,
      logo: page.image_urls[2],
      url: page.fullurl,
    }
    box = Infoboxer.wikipedia.get(name).infobox
    vars = box.variables.map(&:name)
    vars.each do |keyword|
      if keyword == 'editor' || keyword == 'owner' || keyword == 'creator' || keyword == 'year'
        params[keyword.to_sym] = box.fetch(keyword).first.text
      elsif keyword == 'author'
        params[:creator] = box.fetch(keyword).first.text
      end
    end

    unless params[:year]
      content = page.content
      params[:year] = content.match(/start\sdate\s+\K.*(\|\d{4}\|)/)[1].to_s.tr('|', '')
    end

    params
  end

end
