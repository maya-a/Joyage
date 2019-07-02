

$(document).ready(function() {
  var maxFields      = 5; //maximum input boxes allowed
  var wrapper       = $(".add-origins"); //Fields wrapper
  addButton = document.getElementById("add-origin");
  var x = 1; //initlal text box count
  addButton.addEventListener('click', (event) => {
    console.log('here!');
    if(x < maxFields){ //max input box allowed
      x++; //text box increment
      $(wrapper).append('<div class="origins-box"><input class="form-control string optional" placeholder="Enter starting point" type="text" name="search[origin][]" id="search_origin"/> <div class="remove-field">X</div></div>'); //add input box
    }
    else if(x = maxFields){
      addButton.style.visibility = 'hidden';
    }
  });
  $(wrapper).on("click",".remove-field", function(e){ //user click on remove text
    e.preventDefault(); $(this).parent('div').remove(); x--;
  })
});

import { initSelect2 } from 'init_select2';
