# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first = HTTParty.get('http://en.wikipedia.org/w/api.php?action=query&prop=revisions&rvprop=content&format=json&titles=Gizmodo&rvsection=0')
# first = HTTParty.get('http://dbpedia.org/data/Gizmodo.json')
gizmodo = Wikipedia.find('Gizmodo')
params = {
  name: gizmodo.title,
  logo: gizmodo.image_urls[2],
  editor: "someone",
  owner: "person",
  url: gizmodo.fullurl,
  year: Time.now,
  creator: 'Rojas'
}
box = Infoboxer.wikipedia.get('Gizmodo').infobox.variables.map(&:name)
box.each do |keyword|
  if keyword == 'editor' || keyword == 'owner' || keyword == 'creator' || keyword == 'year'
    params[keyword.to_sym] = Infoboxer.wikipedia.get('Gizmodo').infobox.fetch(keyword).first.text
  elsif keyword == 'author'
    params[:creator] = Infoboxer.wikipedia.get('Gizmodo').infobox.fetch(keyword).first.text
  elsif keyword == '2'
    params[:year] = Infoboxer.wikipedia.get('Gizmodo').infobox.fetch(keyword).first.text
  end
end
p1 = Publication.new(params)
byebug
box
