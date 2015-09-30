# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  cities = City.create([
  	{ name: 'San Francisco', image_url: 'http://livehdwallpaper.com/wp-content/uploads/2015/01/San-Francisco-Wallpapers.jpg', description: "San Francisco, officially the City and County of San Francisco, is the cultural, commercial, and financial center of Northern California and the only consolidated city-county in California." }, 
  	{ name: 'London', image_url: 'http://gangwallpaper.com/wp-content/uploads/2015/06/Cool-London-Skyline-City-Wallpaper-HD-4.jpg', description: "London is the capital and most populous city of England and the United Kingdom.Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans." }, 
  	{ name: 'New York', image_url: 'http://p1.pichost.me/i/29/1520255.jpg', description: "New York – often called New York City or the City of New York to distinguish it from the State of New York, of which it is a part – is the most populous city in the United States[1] and the center of the New York metropolitan area, the premier gateway for legal immigration to the United States[9][10][11] and one of the most populous urban agglomerations in the world."},
  	{ name: 'Rome', image_url: 'http://images8.alphacoders.com/462/462410.jpg', description: " is a city and special comune (named 'Roma Capitale') in Italy. Rome is the capital of Italy and of the Lazio region. With 2.9 million residents in 1,285 km2 (496.1 sq mi), it is also the country's largest and most populated comune and fourth-most populous city in the European Union by population within city limits."},
  	{ name: 'Istanbul', image_url: 'http://p1.pichost.me/i/23/1459228.jpg', description: "Istanbul, once known as Constantinople, is the most populous city in Turkey, and the country's economic, cultural, and historical center. Istanbul is a transcontinental city in Eurasia, straddling the Bosphorus strait between the Sea of Marmara and the Black Sea."},
  	{ name: 'Austin', image_url: 'http://images5.alphacoders.com/310/310426.jpg', description:  "Austin is the capital of the US state of Texas and the seat of Travis County. Located in Central Texas, Austin is the 11th-most populous city in the United States and the fourth-most populous city in Texas and in the American South."},
  	{ name: 'Vietnam', image_url: 'http://s1.bwallpapers.com/wallpapers/2014/05/29/halong-bay-vietnam_121745798.jpg', description: "officially the Socialist Republic of Vietnam (SRV; Vietnamese: Cộng hòa Xã hội chủ nghĩa Việt Nam (About this sound listen)), is the easternmost country on the Indochina Peninsula in Southeast Asia."},
  	{ name: 'Gibraltar', image_url: 'http://fullhdwp.com/images/wallpapers/Gibraltar-wallpaper.jpg', description: "Gibraltar is a British Overseas Territory located on the southern end of the Iberian Peninsula at the entrance of the Mediterranean"}

 	])
#   Mayor.create(name: 'Emanuel', city: cities.first)
