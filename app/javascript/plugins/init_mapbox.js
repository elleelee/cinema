import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
 const mapElement = document.getElementById('map');
 const fitMapToMarkers = (map, markers) => {
   const bounds = new mapboxgl.LngLatBounds();
   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
   map.fitBounds(bounds, { padding: 90, maxZoom: 15, duration: 0 });
 };
 if (mapElement) { // only build a map if there's a div#map to inject into
  // console.log(mapElement)
   mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
   const map = new mapboxgl.Map({
     container: 'map',
     style: 'mapbox://styles/mapbox/streets-v10'
   });
   const markers = JSON.parse(mapElement.dataset.markers);
   markers.forEach((marker) => {
    console.log(marker)
     const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
     // Create a HTML element for your custom marker
     const element = document.createElement('div');
     element.className = 'marker';
     element.style.backgroundImage = "url('https://cdn2.iconfinder.com/data/icons/pittogrammi/142/94-512.png')";
     // element.style.backgroundImage = url('${marker.image_url}');
     element.style.backgroundSize = 'contain';
     element.style.width = '25px';
     element.style.height = '25px';
     new mapboxgl.Marker(element)
       .setLngLat([ marker.lng, marker.lat ])
       .setPopup(popup)
       .addTo(map);
   });
   if (markers.length > 0) fitMapToMarkers(map, markers);
   map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));
 }
};

export { initMapbox };
