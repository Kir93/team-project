/**
 * faq JS
 */
var modal = document.querySelector(".modal"); 
         var button = document.querySelector("button");  
         var cancelButton = document.querySelector("#cancel");
         var submissinbutton = document.querySelector("#sub_b");
        


         function toggleModal() { 
             modal.classList.toggle("show-modal"); 
         }

        function windowOnClick(event) { 
             if (event.target === modal) { 
                 toggleModal(); 
             } 
         }

         button.addEventListener("click", toggleModal); 
         cancel.addEventListener("click", toggleModal);
         sub_b.addEventListener("click", toggleModal);
         window.addEventListener("click", windowOnClick); 