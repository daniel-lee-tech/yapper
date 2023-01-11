// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "popper"
import "bootstrap"

document.addEventListener("DOMContentLoaded", function () {
    // This code is copied from Bootstrap's docs. See link below.
    const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
    const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
    console.log(popoverList)
});