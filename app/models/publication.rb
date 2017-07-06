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
  validates :logo, :name, :url, :year, presence: true

  def self.wiki_search(name)
    page = Wikipedia.find(name)
    params = {
      name: page.title,
      logo: page.image_urls[1],
      url: page.fullurl
    }

    box = Infoboxer.wikipedia.get(name).infobox
    vars = box.variables.map(&:name)
    vars.each do |keyword|
      if keyword == 'editor' || keyword == 'owner' || keyword == 'creator' || keyword == 'year'
        params[keyword.to_sym] = box.fetch(keyword).first.text
      elsif keyword == 'author'
        params[:creator] = box.fetch(keyword).first.text
      elsif keyword == 'publisher'
        params[:owner] = box.fetch(keyword).first.text
      end
    end

    page.image_urls.each do |url|
      if url.split('_').join(" ").include?(page.title)
        params[:logo] = url
        break
      end
    end

    unless params[:year]
      content = page.content
      year = content.match(/start\sdate\s+\K.*(\|\d{4}\|)/)[1].to_s.tr('|', '').to_i
      params[:year] = Date.new(year)
    end

    unless params[:owner]
      owner = page.text.match(/published by ([^\.]*)/)
      params[:owner] = owner[1] if owner
    end

    params
  end

end
