/**
 * Item page JS
 */
// ItemDetail의 위치를 찾아 그 위치에 도달하면 .js-bar 생성

$(document).ready(function() {
    const target = document.querySelector("#itemDetail"); // 요소의 id 값이 target이라 가정
    const clientRect = target.getBoundingClientRect(); // DomRect 구하기 (각종 좌표값이 들어있는 객체)
    const relativeTop = clientRect.top; // Viewport의 시작지점을 기준으로한 상대좌표 Y 값.

    window.addEventListener("scroll", function() {
        var el = document.querySelector(".js-bar");

        if (window.scrollY >= relativeTop) el.classList.add("showBar");
        else el.classList.remove("showBar");
    });
});
// 찜한목록 추가 삭제를 위한 Function

function choseItem(userInfo) {
    const items = document.querySelectorAll(".js-chose");
    if (userInfo === undefined) {
        alert("로그인 후 사용가능합니다.");
        location.href = "/main/loginTeam";
    } else {
        if (items[0].innerHTML == "♡") {
            items[0].innerHTML = "♥";
            items[1].innerHTML = "♥";
        } else {
            items[0].innerHTML = "♡";
            items[1].innerHTML = "♡";
        }
    }
}

function countBtn(e, target, x) {
    const parent = target.parentNode;
    const count = parent.querySelector(".js-count");
    if (x === 1) count.value++;
    else {
        if (count.value > 1) count.value--;
    }
}
function topPage() {
    window.scroll(0, 0);
}
function viewColors(colors) {
    for (var i = 0; i < colors.length; i++) {
        var html = `<option value=${colors[i]}>${colors[i]}</option>`;
        $("#colorList").append(html);
    }
}

$(".js-count").on("focusout", function() {
    this.value = 1;
});

$(".js-count").on("keyup", function() {
    if (/\D/.test(this.value)) {
        this.value = this.value.replace(/\D/g, "");
        alert("숫자만 입력가능합니다.");
    }
    if (this.value < 1 && this.value != "") {
        this.value = 1;
        alert("1개 이상을 선택하세요.");
    } else if (this.value > 99) {
        this.value = 99;
        alert("99개 이하를 선택하세요.");
    }
});
var params = {
    pno: $("#no").val(),
    count: $(".count").val(),
    color: $("#colorList").val()
};
function buyNow(userInfo) {
    if ($("#colorList").val() === "") {
        alert("색상을 선택하세요.");
    } else {
        if (userInfo === undefined) {
            alert("로그인 후 사용가능합니다.");
            location.href = "/main/loginTeam";
        } else {
            var params = {
                    pno: $("#no").val(),
                    uno: userInfo,
                    price: $("#price").val(),
                    count: $(".count").val(),
                    color: $("#colorList").val()
                };
            console.log(params);
                $.ajax({
                    url: "/setBuy",
                    type: "post",
                    data: JSON.stringify(params),
                    contentType: "application/json; charset=UTF-8"
                }).done(function(data) {
                    if (data > 0) location.href="/main/payment";
                    else alert("문제가 발생했습니다.");
                });
            }
    }
}
function cartNow(userInfo) {
    if ($("#colorList").val() === "") {
        alert("색상을 선택하세요.");
    } else {
        if (userInfo === undefined) {
            alert("로그인 후 사용가능합니다.");
            location.href = "/main/loginTeam";
        } else {
            var params = {
                pno: $("#no").val(),
                uno: userInfo,
                count: $(".count").val(),
                color: $("#colorList").val()
            };
            $.ajax({
                url: "/setCart",
                type: "post",
                data: JSON.stringify(params),
                contentType: "application/json; charset=UTF-8"
            }).done(function(data) {
                if (data > 0) alert("장바구니에 상품이 담겼습니다.");
                else alert("문제가 발생했습니다.");
            });
        }
    }
}
