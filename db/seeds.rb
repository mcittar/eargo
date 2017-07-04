# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first = HTTParty.get('http://en.wikipedia.org/w/api.php?action=query&prop=revisions&rvprop=content&format=json&titles=Gizmodo&rvsection=0')
# first = HTTParty.get('http://dbpedia.org/data/Gizmodo.json')

page = Wikipedia.find('The Verge')
box = Infoboxer.wikipedia.get('GeekWire').infobox.variables.map(&:name)

byebug
params = Publication.wiki_search('Gizmodo')
byebug
gizmodo = Publication.create(params)

params2 = Publication.wiki_search('Popular Science')
popular_science = Publication.create(params2)

params3 = Publication.wiki_search('PC Magazine')
popular_science = Publication.create(params3)

params4 = Publication.wiki_search('Techcrunch')
popular_science = Publication.create(params4)

params5 = Publication.wiki_search('The Verge')
popular_science = Publication.create(params5)

params6 = Publication.wiki_search('GeekWire')
popular_science = Publication.create(params6)
