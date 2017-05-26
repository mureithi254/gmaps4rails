# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


var handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'geolocation'} }, function(){
  // be aware chrome >= 50 requires https for geolocation to work
  if(navigator.geolocation)
    navigator.geolocation.getCurrentPosition(displayOnMap);
});

function displayOnMap(position){
  var marker = handler.addMarker({
    lat: position.coords.latitude,
    lng: position.coords.longitude
  });
  handler.map.centerOn(marker);
};







