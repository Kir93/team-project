$(document).ready(function() {
    function mainList() {
        $.ajax({
            url: "/newList",
            type: "post",
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            $("#itemArea").html(data);
        });
    }
    mainList();
});
