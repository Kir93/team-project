
/* Mypage
 * */
    	function ck(){
    		var regExp = /^\d{3}\d{3,4}\d{4}$/;
    		var txt = document.getElementById("number").value;
    		if(regExp.test(txt)){
    			alert("OK");
    		} else {
    			alert("NO");
    		}
    	}
    	
    	
    	function modal() {
    		if(document.getElementById("modal").style.display == "block"){
    			document.getElementById("modal").style.display = "none";
    		} else {
    			document.getElementById("modal").style.display = "block";
    		}    		
		}
    	
 

