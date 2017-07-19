//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap-datepicker

$(document).ready(function() {
  console.log("start");
  $('.datepicker').datepicker({
  });
  console.log("finish");
});
