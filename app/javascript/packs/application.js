// import "../plugins/flatpickr" //Added by AlexFlamant
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { bookingIncrementer } from '../booking_button';

initMapbox();
bookingIncrementer();
