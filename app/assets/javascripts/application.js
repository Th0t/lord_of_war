//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap-datepicker

$(document).ready(function() {

  $('.datepicker').datepicker({
    startDate: new Date(),
    weekStart: 1,
    autoclose: true
  });
});
