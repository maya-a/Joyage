import { initSelect2 } from './init_select2'

$(document).ready(function() {
  var maxFields      = 5; //maximum input boxes allowed
  var wrapper       = $(".add-origins"); //Fields wrapper
  addButton = document.getElementById("add-origin");
  var x = 1; //initlal text box count
  addButton.addEventListener('click', (event) => {
    console.log('here!');
    if(x < maxFields){ //max input box allowed
      x++; //text box increment
      $(wrapper).append('<%= select_tag "origins", options_from_collection_for_select(Origin.all, "id", "name"), class: "form-control string optional select2"  %>');
       //add input box
       initSelect2();
    }
    else if(x = maxFields){
      addButton.style.visibility = 'hidden';
    }
  });
  $(wrapper).on("click",".remove-field", function(e){ //user click on remove text
    e.preventDefault(); $(this).parent('div').remove(); x--;
  })
});

