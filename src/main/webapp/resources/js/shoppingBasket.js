/**
 * shoppingBasket JS
 */
$(document).ready(function() {
    $("#allchk").click(function() {
        if ($("#allchk").prop("checked")) {
            $("input[type=checkbox]").prop("checked", true); // 전체선택 체크박스가 해제된 경우 }
        } else {
            $("input[type=checkbox]").prop("checked", false);
        }
    });

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

    $(".colorList").change(function() {
        if ($(this).val() !== "") {
            const parent = this.parentNode;
            const no = parent.querySelector(".no");
            var params = {
                no: no.value,
                color: $(this).val()
            };
            $.ajax({
                url: "/repairColor",
                type: "post",
                data: JSON.stringify(params),
                contentType: "application/json; charset=UTF-8"
            }).done(function(data) {
                if (data > 0) {
                    alert("색상이 변경되었습니다.");
                } else alert("문제가 발생했습니다.");
            });
        }
    });
});

var i = 0;
function viewColors(colors, color) {
    for (var j = 0; j < colors.length; j++) {
        if (colors[j] === color) {
            var html = `<option value=${colors[j]} selected="selected">${colors[j]}</option>`;
        } else {
            var html = `<option value=${colors[j]}>${colors[j]}</option>`;
        }
        $(".colorList")
            .eq(i)
            .append(html);
    }
    i++;
}

function countBtn(e, target, x) {
    const parent = target.parentNode;
    const count = parent.querySelector(".js-count");
    if (x === 1) count.value++;
    else {
        if (count.value > 1) count.value--;
    }
}

function repairCount(target) {
    const parent = target.parentNode;
    const count = parent.querySelector(".js-count");
    const no = parent.querySelector(".no");
    var params = {
        no: no.value,
        quantity: count.value
    };
    $.ajax({
        url: "/repairCount",
        type: "post",
        data: JSON.stringify(params),
        contentType: "application/json; charset=UTF-8"
    }).done(function(data) {
        if (data > 0) {
            alert("수량이 변경되었습니다.");
            location.reload();
        } else alert("문제가 발생했습니다.");
    });
}

function delAllCart(userNo) {
    if ($(".no").val() === undefined) {
        alert("장바구니에 상품이 없습니다.");
        return;
    }
    if (confirm("상품을 삭제하시겠습니까?")) {
        $.ajax({
            url: "/delAllCart",
            type: "post",
            data: JSON.stringify(userNo),
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            if (data > 0) {
                location.reload();
            } else alert("문제가 발생했습니다.");
        });
    }
}

function delSelectCart(userNo) {
    var paramList = [];
    var params;
    var chkbox = $(".order");
    for (var i = 0; i < $(".order").length; i++) {
        if (chkbox[i].checked === true) {
            params = {
                no: chkbox[i].value,
                uno: userNo
            };
            paramList[i] = params;
        }
    }
    if ($(".no").val() === undefined) {
        alert("장바구니에 상품이 없습니다.");
        return;
    }
    if (confirm("상품을 삭제하시겠습니까?")) {
        $.ajax({
            url: "/delSelectCart",
            type: "post",
            data: JSON.stringify(paramList),
            contentType: "application/json; charset=UTF-8"
        }).done(function(data) {
            if (data > 0) {
                location.reload();
            } else alert("문제가 발생했습니다.");
        });
    }
}
function selectCartSend() {
	var idx = 0;
    var paramList = [];
    var params;
    var chkbox = $(".order");
    var pno = $(".pno");
    var sname = $(".sname");
    var color = $(".colorList");
    var price = $(".price");
    var quantity = $(".count");
    var sumPrice = $(".sumPrice");
    for (var i = 0; i < $(".order").length; i++) {
        if (chkbox[i].checked === true) {
            params = {
                cno: chkbox[i].value,
                pno: pno[i].value,
                sname: sname[i].value,
                color: color[i].value,
                price: price[i].value,
                count: quantity[i].value,
                sumPrice: sumPrice[i].value
            };
            paramList[idx] = params;
            idx++;
        }
    }
    console.log(paramList);
    $.ajax({
        url: "selectCartView",
        type: "post",
        data: JSON.stringify(paramList),
        contentType: "application/json; charset=UTF-8"
    }).done(function(data) {
    	location.href='/main/payment';
    }); 
    
}
 function allselectCart(){
	 $.ajax({
	        url: "allselectCart",
	        type: "post"
	    }).done(function(data) {
	    	location.href='/main/payment';
	    }); 
	 
 }

