import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/airbnb.css"

flatpickr(".datetimepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i"
  })

flatpickr(".datepicker", {

  })
