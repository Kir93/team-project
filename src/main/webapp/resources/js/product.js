function setProduct() {
    modal = $(".M1");
    modal.removeClass("hidden");
    overlay = document.getElementsByClassName("modal__overlay");
    openButton = document.getElementById("open");
}

function repairProduct() {
    var no = $('input:radio[name="chk"]:checked').val();
    modal = $(".M3");
    if (no === undefined) alert("수정할 상품을 선택하세요!");
    else modal.removeClass("hidden");
    overlay = document.getElementsByClassName("modal__overlay");
    openButton = document.getElementById("open");
    $.ajax({
        url: "/findProduct",
        type: "post",
        data: no,
        contentType: "application/json; charset=UTF-8"
    }).done(function(data) {
    	$("#upno").val(data.no);
        $("#rname").val(data.sname);
        $("#rprice").val(data.price);
        var color = JSON.parse(data.color);
        var chkbox = $(".RcolorSelect");
	    for(var j = 0; j < chkbox.length; j++){
	    	chkbox[j].checked = false;
	    }
        for (i = 0; i < chkbox.length; i++) {
        	for(j = 0; j < color.length; j++){
        		if (chkbox[i].value == color[j]) {
                    chkbox[i].checked = true;
                }
        	}
        }
        if (data.soldOut === "Y") $(".soldOut")[0].checked = true;
    });
}
function closeModal() {
    closeBtn = document.getElementsByClassName("close");
    modal.addClass("hidden");
}

$(document).ready(function() {
    function productStatus() {
        $.ajax({
            url: "/productStatus",
            type: "post",
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            $("#productStatus").html(data);
        });
    }

    function productList() {
        $.ajax({
            url: "/productList",
            type: "post",
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            $("#productList").html(data);
        });
    }

    productStatus();
    productList();
    var op = {
        url: "/setProduct",
        type: "post",
        contentType: "application/json; charset=UTF-8"
    };
    $("#setProduct").submit(function(e) {
        var colors = [];
        var cnt = 0;
        var chkbox = $(".colorSelect");
        for (i = 0; i < chkbox.length; i++) {
            if (chkbox[i].checked == true) {
                colors[cnt] = chkbox[i].value;
                cnt++;
            }
        }
        if(chkbox.length === 0)	alert("컬러를 선택해 주세요.");
        e.preventDefault();
        var form = new FormData();
        form.append("tImg", $("#thumbnailImg")[0].files[0]);
        form.append("dImg", $("#detailImg")[0].files[0]);
        params = {
            sname: $("#sname").val(),
            price: parseInt($("#price").val()),
            color: JSON.stringify(colors)
        };
        op.data = JSON.stringify(params);
        $.ajax(op).done(function(data) {
            if (data > 0) {
                $.ajax({
                    type: "post",
                    url: "/setImage",
                    enctype: "multipart/form-data",
                    processData: false,
                    contentType: false,
                    cache: false,
                    data: form
                }).done(function(data) {
                    alert("등록성공!");
                    closeModal()
                });
            } else alert("등록실패!");
        });
    });
    var uop = {
        url: "/upProduct",
        type: "post",
        contentType: "application/json; charset=UTF-8"
    };
    $("#updateProduct").submit(function(e) {
        var colors = [];
        var cnt = 0;
        var chkbox = $(".RcolorSelect");
        for (i = 0; i < chkbox.length; i++) {
            if (chkbox[i].checked == true) {
                colors[cnt] = chkbox[i].value;
                cnt++;
            }
        }
        if(chkbox.length === 0)	alert("컬러를 선택해 주세요.");
        e.preventDefault();
        params = {
        	no: $("#upno").val(),
            sname: $("#rname").val(),
            price: parseInt($("#rprice").val()),
        };
        if(colors.length > 0)	params.color = JSON.stringify(colors)
    	if($(".soldOut")[0].checked == true)	params.soldOut = $('.soldOut').val();
    	else	params.soldOut = "N";
        uop.data = JSON.stringify(params);
        var form = new FormData();
	 	var tImg = $("#rThumbnailImg")[0].files[0];
	 	var dImg = $("#rDetailImg")[0].files[0];
        $.ajax(uop).done(function(data) {
           if (data > 0) {
        	   if(tImg != undefined || dImg != undefined){
	        	   if(tImg != undefined)
	        		   form.append("tImg", $("#rThumbnailImg")[0].files[0]);
	        	   else	form.append("tImg", null);
	        	   if(dImg != undefined)
	        		   form.append("dImg", $("#rDetailImg")[0].files[0]);
	        	   else	form.append("dImg", null);
	        	   form.append("no", $("#upno").val());
	        	   $.ajax({
	                    type: "post",
	                    url: "/upImage",
	                    enctype: "multipart/form-data",
	                    processData: false,
	                    contentType: false,
	                    cache: false ,
	                    data: form
	                }).done(function(data) {
	                	console.log(data);
	                });
        	   }
        	   alert("수정성공!");
        	   $("#rThumbnailImg").val("");
        	   $("#rDetailImg").val("");
        	   closeModal();
           } else alert("수정실패!");
        });
    });
});
