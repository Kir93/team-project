$(document).ready(function() {
    function mainList() {
        $.ajax({
            url: "/mainList",
            type: "post",
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            $("#itemArea").html(data);
        });
    }
    mainList();
});
