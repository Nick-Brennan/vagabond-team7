var map;
var markers = [];
var LatLng = { lat: 37.78, lng: -122.44};
var maparr = [{name: "San Francisco", LatLng:{ lat: 37.78, lng: -122.44}}, {name: "london", LatLng:{ lat: 51.50, lng: 0.12}}, {name: "New York", LatLng:{ lat: 40.71, lng: -74.00}}]

$(document).ready( function (){
	markerPush(maparr)
	getMap();
	setMapOnAll(map);

});
	


	function getMap () {
		map = new google.maps.Map(document.getElementById('map-canvas'), {
			center: LatLng,
			zoom: 11
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
		markers.push(marker)
	});
};



	function setMapOnAll(map) {
  	for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  }
}
