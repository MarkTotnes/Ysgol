<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Map.aspx.vb" Inherits="Blaeneinion.Map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
  <title></title>  
    <style>
      #map_canvas {
        width: 759px;
        height: 400px;
      }
    </style>
    <script  type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        function initialize() {
            var map_canvas = document.getElementById('map_canvas');
            var myLatlng = new google.maps.LatLng(52.506004, -3.978484);
            var cafe = new google.maps.LatLng(52.512456, -3.976076);
            var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';
            var map_options = {
                center: new google.maps.LatLng(52.506004, -3.978484),
                zoom: 14,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(map_canvas, map_options)
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: 'Ysgol Llangyfelyn',
                icon: iconBase + 'schools_maps.png',
                shadow: iconBase + 'schools_maps.shadow.png'

            });
            var cafeMarker = new google.maps.Marker({
                position: cafe,
                map: map,
                icon: 'http://chart.apis.google.com/chart?chst=d_map_pin_icon&chld=cafe|FFFF00',
                title: 'Siop & Caffi Cynfelyn at Cletwr'
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  </head>
  <body style="width: 765px">
    <div id="map_canvas"></div>
  </body>
</html>
