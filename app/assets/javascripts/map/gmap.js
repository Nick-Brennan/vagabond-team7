var map;
var markers = [];
var LatLng = { lat: 40.00, lng: -30.00};
var maparr = [{name: "San Francisco", LatLng:{ lat: 37.78, lng: -122.44}},
{name: "london", LatLng:{ lat: 51.50, lng: 0.12}},
{name: "New York", LatLng:{ lat: 40.71, lng: -74.00}},
{name: "Rome", LatLng:{ lat: 41.9, lng: 12.50}},
{name: "Istanbul", LatLng:{ lat: 41.01, lng: 28.95}},
{name: "Austin", LatLng:{ lat: 30.25, lng: -97.75}},
{name: "Gibraltar", LatLng:{ lat: 36.14, lng: 5.35}},
{name: "Vietnam", LatLng:{ lat: 21.03, lng: 105.85}}]

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
		var info = createInfoWindow("Congratulations!");
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
