import 'mapbox-gl/dist/mapbox-gl.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'
// ADD THIS LINE 👇 (js)
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
    // style: 'mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb'
  });

  const markers = JSON.parse(mapElement.dataset.markers);

    markers.forEach((marker) => {
      new mapboxgl.Marker()
         .setLngLat([marker.lng, marker.lat])
         .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
         .setHTML(marker.infoWindow.content))
         .addTo(map);
     })

    if (markers.length === 0) {
        map.setZoom(1);
      } else if (markers.length === 1) {
        map.setZoom(14);
        map.setCenter([markers[0].lng, markers[0].lat]);
      } else {
        const bounds = new mapboxgl.LngLatBounds();
        markers.forEach((marker) => {
          bounds.extend([marker.lng, marker.lat]);
        });
        map.fitBounds(bounds, { duration: 1000, padding: 75 })
      }


    map.addControl(new MapboxGeocoder({
        accessToken: mapboxgl.accessToken
      }));
}

const addressInput = document.getElementById('flat_address');

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });
}