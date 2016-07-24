var map;
var directionsService = new google.maps.DirectionsService();
var address = ["Blaenwaun, Ffostrasol, Llandysul, SA44 5JT","Sophia House, 28 Cathedral Road, Cardiff, CF11 9LJ"];
var timeout = 600;

function initialize() {
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(37.779334, -122.423473);
    var myOptions = {
        zoom: 11,
        center: latlng,
        mapTypeId: 'roadmap'
    }
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        plotRoutes();
}

function plotRoutes()  {

    color = "#"+((1<<24)*Math.random()|0).toString(16);
    var request = {
        origin      : address[0],
        destination : address[1],
        travelMode  : google.maps.DirectionsTravelMode.DRIVING
    };
    displayRoute(request, color);
    
}

function displayRoute(request, color) {
    directionsService.route(request, function(response, status) {
         if (status == google.maps.DirectionsStatus.OK)
         {
             var polylineOptionsActual = {
                  strokeColor  :color,
                  strokeOpacity: 1.0,
                  strokeWeight : 5};

             var directionsRenderer = new google.maps.DirectionsRenderer;
             directionsRenderer.setMap(map);
             directionsRenderer.setOptions( { polylineOptions: polylineOptionsActual, suppressMarkers: false} );
             directionsRenderer.setDirections(response);
        }
        else
        {
            if (status == "OVER_QUERY_LIMIT")
            {
                setTimeout(function() { displayRoute(request, color); }, (timeout));
            }
        }
     });
}
