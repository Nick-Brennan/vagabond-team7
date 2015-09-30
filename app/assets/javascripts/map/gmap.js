var map;
var markers = [];
var LatLng = { lat: 40.00, lng: -30.00};
var maparr = [{name: "San Francisco", LatLng:{ lat: 37.78, lng: -122.44}, description: "San Francisco, officially the City and County of San Francisco, is the cultural, commercial, and financial center of Northern California and the only consolidated city-county in California." },
{name: "london", LatLng:{ lat: 51.50, lng: 0.12}, description: "London is the capital and most populous city of England and the United Kingdom.Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans."},
{name: "New York", LatLng:{ lat: 40.71, lng: -74.00},  description: "New York – often called New York City or the City of New York to distinguish it from the State of New York, of which it is a part – is the most populous city in the United States[1] and the center of the New York metropolitan area, the premier gateway for legal immigration to the United States[9][10][11] and one of the most populous urban agglomerations in the world."},
{name: "Rome", LatLng:{ lat: 41.9, lng: 12.50}, description: "Rome is a city and special comune (named 'Roma Capitale') in Italy. Rome is the capital of Italy and of the Lazio region. With 2.9 million residents in 1,285 km2 (496.1 sq mi), it is also the country's largest and most populated comune and fourth-most populous city in the European Union by population within city limits."},
{name: "Istanbul", LatLng:{ lat: 41.01, lng: 28.95}, description: "Istanbul, once known as Constantinople, is the most populous city in Turkey, and the country's economic, cultural, and historical center. Istanbul is a transcontinental city in Eurasia, straddling the Bosphorus strait between the Sea of Marmara and the Black Sea."},
{name: "Austin", LatLng:{ lat: 30.25, lng: -97.75}, description:  "Austin is the capital of the US state of Texas and the seat of Travis County. Located in Central Texas, Austin is the 11th-most populous city in the United States and the fourth-most populous city in Texas and in the American South."},
{name: "Gibraltar", LatLng:{ lat: 36.14, lng: 5.35}, description: "Gibraltar is a British Overseas Territory located on the southern end of the Iberian Peninsula at the entrance of the Mediterranean"},
{name: "Vietnam", LatLng:{ lat: 21.03, lng: 105.85}, description: "officially the Socialist Republic of Vietnam (SRV; Vietnamese: Cộng hòa Xã hội chủ nghĩa Việt Nam (About this sound listen)), is the easternmost country on the Indochina Peninsula in Southeast Asia."}]

$(document).ready( function (){
	markerPush(maparr)
	getMap();
	setMapOnAll(map);

});



function getMap () {

	map = new google.maps.Map(document.getElementById('map-canvas'), {
		center: LatLng,
		zoom: 3
	});
	console.log("sanity")

	
};

function markerPush(arr) {
	arr.forEach(function(el) {
		var marker = new google.maps.Marker({
			position: el.LatLng,
			map: map,
			title: el.name
		})
		var info = createInfoWindow(el.description);
		google.maps.event.addListener(marker, 'click', function() {
			info.open(map,marker);
		});
		markers.push(marker)
	});
};



function setMapOnAll(map) {
	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map);
	}
};

function createInfoWindow(text){
	var infowindow = new google.maps.InfoWindow({
		content: text
	});
	return infowindow;
}
