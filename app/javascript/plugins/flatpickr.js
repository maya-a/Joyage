import flatpickr from "flatpickr"
import "flatpickr/dist/themes/material_blue.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#dep_date", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#ret_date"})]
})
