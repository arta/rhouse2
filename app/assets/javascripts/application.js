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
//= require activestorage
//= require turbolinks
//= require_tree .

// 1-4-24: Integrate ZF CSS & JS via Yarn, instead of gem
//
// require jquery
// require foundation
//
// this is now in app/javascript/packs/application.js
// $(document).on('turbolinks:load', function() {
//   $(function(){ $(document).foundation(); });
// });
//
// Rails (5.2) will not pick this up if in hero-overlay.js,
// dunno why ... no word anywhere, extremely frustrating, so here it goes:
// $(function() {
//   $(window).scroll(function() {
//     var currentScrollTop = $(window).scrollTop();
//     $('.hero-overlay').css('opacity',
//       (currentScrollTop) / ($('.hero-overlay').height()));
//   });
//   $('#flash-notice').fadeOut(12000);
//   $('#flash-alert').fadeOut(12000);
// });
