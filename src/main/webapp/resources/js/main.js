/**
 *  mainPage JS
 */
function choseItem(e, target) {
    const item = target;
    if (item.innerHTML == "♡") {
        item.innerHTML = "♥";
    } else {
        item.innerHTML = "♡";
    }
}
