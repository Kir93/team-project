/**
 *  mainPage JS
 */
function choseItem(uno, pno, target) {
    const item = target;
    if (item.innerHTML == "♡") {
        var params = {
            uno: uno,
            pno: pno,
        };
        $.ajax({
            url: "/setChose",
            type: "post",
            data: JSON.stringify(params),
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            console.log(data);
            if (data > 0) {
                item.innerHTML = "♥";
                $("#itemArea").load(window.location.href + "#itemArea");
            }
        });
    } else {
        var no = target.parentNode.querySelector(".no").value;
        var params = {
            uno: uno,
            no: no
        };
        $.ajax({
            url: "/delChose",
            type: "post",
            data: JSON.stringify(params),
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            console.log(data);
            if (data > 0) {
                item.innerHTML = "♡";
                $("#itemArea").load(window.location.href + "#itemArea");
            }
        });
    }
}
