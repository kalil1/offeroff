// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .


$(document).ready(function() {
  window.onscroll = function() {myFunction()};

  var navbar = document.getElementById("navbar");
  var sticky = navbar.offsetTop;

  function myFunction() {
    if (window.pageYOffset >= sticky) {
      navbar.classList.add("sticky")
    } else {
      navbar.classList.remove("sticky");
    }
  };
   $('select').material_select();
 });

 /* Change product photo when thumbnails are clicked */
var thumbs = document.getElementsByClassName("product-thumb"),
    w = window.innerWidth;

for (var i = 0; i < thumbs.length; i++) {
  // Set event listener on each thumbnail
  thumbs[i].addEventListener("click", toggleThumb, false);
}

/* Function to swap out main image when thumbnail is clicked */
function toggleThumb(e) {
  if (this.dataset.pos > 0 && w > 640) {
    var pos = 1;
    // Thumbnail so swap with main image
    e.preventDefault();
    // Set this image as the main one
    this.dataset.pos = 0;
    this.classList.add("thumb-active");

    // Update position of all other images using data-pos
    for (var i = 0; i < thumbs.length; i++) {
      if (thumbs[i] != this) {
        thumbs[i].dataset.pos = pos;
        pos++;
      }
    }
    // Remove active class
    document
      .getElementsByClassName("thumb-active")[0]
      .classList.remove("thumb-active");
  } else {
    // Main image, so open a large version - don't suppress the link
  }
}

var superfish = $('#st-navbar-desktop-menu-nav').superfish({
  //add options here if required
});
