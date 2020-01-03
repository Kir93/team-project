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
<<<<<<< HEAD
         window.addEventListener("click", windowOnClick); 
         var acc = document.getElementsByClassName("accordion");
         var i;

         for (i = 0; i < acc.length; i++) {
           acc[i].addEventListener("click", function() {
             this.classList.toggle("active");
             var panel = this.nextElementSibling;
             if (panel.style.display === "block") {
               panel.style.display = "none";
             } else {
               panel.style.display = "block";
             } 
           });
         }
=======
         window.addEventListener("click", windowOnClick); 
>>>>>>> refs/remotes/origin/Kir93
