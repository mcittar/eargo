json.array! @publications do |publication|
  json.id publication.id
  json.name publication.name
  json.year publication.year.year
  json.logo publication.logo
  json.site_type publication.site_type
  json.editor publication.editor
  json.owner publication.owner
  json.url publication.url
  json.creator publication.creator
end
