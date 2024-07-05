$(document).ready(function(){

      $(".gender-options").hide();


      $("#gender").click(function() {
        $(".gender-options").toggle(); 
      });


      $(".gender-option").click(function() {
        var selectedGender = $(this).data("value"); 
        $("#gender").val(selectedGender); 
        $(".gender-options").hide(); 
      });


     
    });