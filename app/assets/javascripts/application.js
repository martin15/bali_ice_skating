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
//= require jquery3
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require ckeditor/init
//= require_tree .

// document on ready functions
$(document).ready(function () {
  // my variables
  var nav = $('#nav'),
      bars = $('#bars'),
      menu = $('#menu'),
      up = $('#up'),
      prevOffset = 0,
      mainSection = $('.main-section'),
      mainSectionLength = mainSection.length,
      links = $('#menu li'),
      flag = 0,
      flag2 = 0,
      lastI = 100,
      body = $('body');
      myWindow = $(window);
  
  
  // menu bars on click
  function barsClicked() {
    bars.toggleClass('clicked');
    menu.slideToggle(300);
  }

  bars.on('click', barsClicked);

});


function initMap() {
  if ($('#googleMap').length > 0) {

      //set your google maps parameters
      var $latitude = -8.723207, //If you unable to find latitude and longitude of your address. Please visit http://www.latlong.net/convert-address-to-lat-long.html you can easily generate.
          $longitude = 115.184565,
          $map_zoom = 16; /* ZOOM SETTING */

      //google map custom marker icon
      var $marker_url = 'assets/google-map-marker.png';

      //we define here the style of the map
      var style = [{
          "stylers": [
          // {
          //     "hue": "#000"
          // }, {
          //     "saturation": -100
          // }, {
          //     "gamma": 0.15
          // }, {
          //     "lightness": 12
          // }
        ]
      }];

      //set google map options
      var map_options = {
          center: new google.maps.LatLng($latitude, $longitude),
          zoom: $map_zoom,
          panControl: false,
          zoomControl: false,
          mapTypeControl: false,
          streetViewControl: false,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          scrollwheel: false,
          styles: style,
      }
      //initialize the map
      var map = new google.maps.Map(document.getElementById('googleMap'), map_options);
      //add a custom marker to the map
      var marker = new google.maps.Marker({
          position: new google.maps.LatLng($latitude, $longitude),
          map: map,
          visible: true,
          icon: $marker_url
      });
  }
};

