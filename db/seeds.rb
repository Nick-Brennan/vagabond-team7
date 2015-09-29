# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  cities = City.create([{ name: 'San Francisco', image_url: 'http://www.sanfrancisco.travel/sites/sftraveldev.prod.acquia-sites.com/files/SanFrancisco_0.jpg' }, { name: 'London', image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/6e/London_Thames_Sunset_panorama_-_Feb_2008.jpg' }, { name: 'Gibralter', image_url: 'http://www.gibraltarmusicfestival.com/wp-content/uploads/2015/02/GibSunborn.jpg'}])
#   Mayor.create(name: 'Emanuel', city: cities.first)
