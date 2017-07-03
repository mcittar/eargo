# == Schema Information
#
# Table name: publications
#
#  id         :integer          not null, primary key
#  logo       :string           not null
#  name       :string           not null
#  site_type  :string
#  editor     :string           not null
#  owner      :string           not null
#  url        :string           not null
#  year       :date             not null
#  creator    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Publication < ApplicationRecord
end
