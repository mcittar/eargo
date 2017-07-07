FactoryGirl.define do
  factory :publication do
    logo "coollogo.com"
    name 'Real Publication'
    site_type 'Online'
    editor 'James Blake'
    owner 'Michael Jackson'
    url 'bestpublication.org'
    year Time.now
    creator 'Yeezus'
  end
end
