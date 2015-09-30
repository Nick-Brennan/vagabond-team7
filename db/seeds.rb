# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  cities = City.create([
  	{ name: 'San Francisco', image_url: 'http://livehdwallpaper.com/wp-content/uploads/2015/01/San-Francisco-Wallpapers.jpg' }, 
  	{ name: 'London', image_url: 'http://gangwallpaper.com/wp-content/uploads/2015/06/Cool-London-Skyline-City-Wallpaper-HD-4.jpg' }, 
  	{ name: 'New York', image_url: 'http://p1.pichost.me/i/29/1520255.jpg'},
  	{ name: 'Rome', image_url: 'http://images8.alphacoders.com/462/462410.jpg'},
  	{ name: 'Istanbul', image_url: 'http://p1.pichost.me/i/23/1459228.jpg'},
  	{ name: 'Austin', image_url: 'http://images5.alphacoders.com/310/310426.jpg'},
  	{ name: 'Vietnam', image_url: 'http://s1.bwallpapers.com/wallpapers/2014/05/29/halong-bay-vietnam_121745798.jpg'},
  	{ name: 'Gibralter', image_url: 'http://fullhdwp.com/images/wallpapers/Gibraltar-wallpaper.jpg'}

 	])
#   Mayor.create(name: 'Emanuel', city: cities.first)
