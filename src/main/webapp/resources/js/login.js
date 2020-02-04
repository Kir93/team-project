$(document).ready(function(){
	var op=	{
			//contentType:'application/json; charset=UTF-8'
			};
	
	$("form").submit(function(e){
		  console.log("로그인");
	      e.preventDefault();
	      
	      var login = {
    		  email :    $("#email").val(),
    		  password:  $("#password").val()
	      };
	      op.url = "/loginTeam";
	      op.type = "POST";
	      op.data = login;
	      $.ajax(op).done(function(d){
	    	 console.log(d);
	         if(d) {
	            alert("login1성공");
	            location.href = "/success";
	         } else {
	            alert("login1실패");
	            location.href = "/main/loginTeam";
	         }
	      });
	   });
	
})
