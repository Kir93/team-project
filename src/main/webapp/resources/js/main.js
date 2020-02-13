/**
 *  mainPage JS
 */
function choseItem(e, target) {
    const item = target;

    if (item.innerHTML == "♡") {
        $.ajax({
            url: "/setChose",
            type: "post",
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            item.innerHTML = "♥";
        });
    } else {
        $.ajax({
            url: "/delChose",
            type: "post",
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            item.innerHTML = "♡";
        });
    }
}
