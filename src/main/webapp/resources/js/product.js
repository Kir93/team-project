$(document).ready(function() {
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
        e.preventDefault();
        params = {
            sname: $("#sname").val(),
            price: parseInt($("#price").val()),
            color: JSON.stringify(colors)
        };
        op.data = JSON.stringify(params);
        $.ajax(op).done(function(data) {
            if (data > 0) alert("등록성공!");
            else alert("등록실패!");
        });
    });
});
