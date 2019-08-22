import "../plugins/flatpickr"; //Added by AlexFlamant
import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { bookingIncrementer } from '../booking_button';
import { initSweetalert } from '../plugins/init_sweetalert';

initMapbox();
initAutocomplete();
bookingIncrementer();

initSweetalert('#booking-submit', {
  title: "You booking is successful",
  text: "Be ready for the event!",
  icon: "success",
  button: "OK",
}, (value) => {
  if (value) {
    const link = document.querySelector('#profile-link');
    link.click();
  }
});




