// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

document.addEventListener("turbo:load", () => {
  flatpickr(".datetime-picker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i"
  })
})