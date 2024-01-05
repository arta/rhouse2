/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hello World from Webpacker')

// 1-4-24: Integrate ZF CSS & JS via Yarn, instead of gem

import $ from "jquery";
import 'foundation-sites';

// moved in here from app/javascript/packs/application.js

$(document).on('turbolinks:load', function () {
  $(document).foundation();
});

$(function () {
  $(window).on('scroll', function () {
    var currentScrollTop = $(window).scrollTop();
    $('.hero-overlay').css('opacity',
      (currentScrollTop) / ($('.hero-overlay').height()));
  });
  $('#flash-notice').fadeOut(12000);
  $('#flash-alert').fadeOut(12000);
});
