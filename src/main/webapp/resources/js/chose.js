$(document).ready(function() {
	var url = location.href;
	var no = (url.slice(url.indexOf('=') + 1, url.length));
    function mainList() {
        $.ajax({
            url: "/choseList",
            type: "post",
            data: no,
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            $("#itemArea").html(data);
        });
    }
    mainList();
});
