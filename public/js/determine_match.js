var directionsService = new google.maps.DirectionsService();
var origin_destination_array = ["Blaenwaun, Ffostrasol, Llandysul, SA44 5JT","Sophia House, 28 Cathedral Road, Cardiff, CF11 9LJ"];
var riderPosition = new google.maps.LatLng(51.796369, -4.079286);
var timeout = 600;


//determine whether it is a match: true/false 
function determine_match(origin_destination_array, riderPosition)  {
        //this is the address request that will be made to the google API 
        //this will be the destination of the driver 
        var request = {
            origin      : origin_destination_array[0],
            destination : origin_destination_array[1],
            travelMode  : google.maps.DirectionsTravelMode.DRIVING
        };

        //this is calling the function that determines whether 
        //rider destination matches rider path 
        match(request, riderPosition);
}

function match(request, riderPosition) {
    //riderPosition is the desired destination of the rider 
    //rider position must be a LatLng google 
    //maps object.
    //takes in the response form the google server containing the address as well as status

    directionsService.route(request, function(response, status) {
        //this response contains the polylines and the encoded string
        if (response != null) {
            serverResponse = response;
        } 
        
        if (status == google.maps.DirectionsStatus.OK)
        {
            if (serverResponse != null){

                var encodedPolyLine = serverResponse.routes[0].overview_polyline;

                var decodedPolylineCoordinates = google.maps.geometry.encoding.decodePath(encodedPolyLine);

                var decodedPolyline = new google.maps.Polyline({
                 path: decodedPolylineCoordinates

                });

            console.log(google.maps.geometry.poly.isLocationOnEdge(riderPosition, decodedPolyline, 0.1));
            
        }

        } else {

            if (status == "OVER_QUERY_LIMIT")
            {
                //wait some amount of time, then re-send request bc sending 
                //many requests can cause over-query-limit 
                setTimeout(function() { match(request, color); }, (timeout));
            }
        }

     });

}