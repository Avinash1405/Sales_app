$(function() {
  $( "#startDate" ).datepicker({
    changeMonth: true,
    onClose: function( selectedDate ) {
      $( "#endDate" ).datepicker( "option", "minDate", selectedDate );
    }
  });
  $( "#endDate" ).datepicker({
    changeMonth: true,
    onClose: function( selectedDate ) {
      $( "#startDate" ).datepicker( "option", "maxDate", selectedDate );
    }
  });
});