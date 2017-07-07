# Eargo Publications Challenge

This is a small fullstack application that scrapes data from specific wikipedia pages and displays them on a custom styled frontend. The backend uses PostgreSQL and Ruby on Rails while the frontend uses the React/Redux framework.

## Setup & Dependencies
Ruby, Javascript, Rails, and PostgreSQL are required for this project
1. Clone the repo
2. Run `bundle install` to install ruby gems
3. Run `npm install` to install necessary npm modules
4. Run the following command in order to set up and seed the database: `rake db:setup`
5. Run `webpack` to set-up the javascript bundle
6. Start the built in rails server: `rails server`
7. Navigate to `http://localhost:3000/` to see the final result

The app should now be up and running. If at any point you need to reset the database you can run `rake db:reset` and restart the server.

Running the setup will fire the seed file which queries Wikipedia for publication information.

## Testing

This app includes tests for my rails models and controllers using Rspec. It includes jest tests for my redux reducer on the frontend.

To run the Rspec tests use: `bundle exec rspec`
To run the Jest tests use: `npm test`

## Models and Controllers

I use one `Publication` model to store information in my database.

I have one `PublicationsController` that handles only a GET request at the `/publications` endpoint.

## Scraping Wikipedia

By far the most challenging part of this assignment was scraping the desired data from Wikipedia pages. The logic for this action can be found at `app/models/publications.rb` in the ::wiki_search method. In my research, I found 2 ruby gems that could grab almost all of the data I needed from a given wikipedia page. To fill in the remaining data, I used Regexes to parse a wiki pages content.

One major issue I found was that different wiki pages format their data differently. I had to write additional checks to make sure I captured data correctly.

Another big issue I encountered was determining which image on a webpage was a publication's correct logo. My gems could only pull an array of all the images on a webpage. Pages can have any number of images in any order, so there was no simple way of plucking the correct logo out of the array. I checked every image to see if the Publication's title was in the url and selected the image that way.

## Frontend

I implemented a full React/Redux framework for the frontend using an npm package I created to quickly set it up. If I want to scale and add additional pages, the app is set up to allow me to quickly and easily do so. I followed the structure of the given mock and tried to keep the aesthetic in line with Eargo's existing site.

## Potential Improvements

The wiki_search method is far and away the area that could use improvement. As it stands, it seems rather slow and inefficient. Currently I am sending multiple queries to wikipedia, speed could be increased by reducing the number of queries to ideally one.

Various forums also recommended using DBpedia to pull info from wikipedia. This seems like the best option for long-term development as it allows advanced queries of data from wikipedia especially from infoboxes which is where most of the relevant data is located. If I had to redo this project, I would attempt to redo it using DBpedia to scrap my data.
