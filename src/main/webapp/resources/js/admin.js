/**
 * adminPage JS
 */


/*Modal 변수선언*/
var openButton;
var modal;
var overlay;
var closeBtn;
/*Tab Menu*/
function menu(id) {
	var oldid = document.querySelector('.show');
	oldid.classList.remove('show');
	var id = document.querySelector(id);
	id.classList.add('show');
}
/*LOGO바로가기*/
function home(url) {
	window.open(url, "_blank");
}
/*Modal*/
function openModal(MDnum) {
	 modal = document.querySelector(MDnum);
	 modal.classList.remove("hidden");
	 overlay = document.getElementsByClassName("modal__overlay");
	 openButton = document.getElementById("open");
}
function closeModal() {
	 closeBtn = document.getElementsByClassName("close");
	 modal.classList.add("hidden");
}

/*accordion*/
function Accordion(){
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
	  acc[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var panel = this.nextElementSibling;
	    if (panel.style.display === "block") {
	      panel.style.display = "none";
	    } else {
	      panel.style.display = "block";
	    }
	  });
	}
}



$(document).ready(function(){
	/*금액3자리에 콤마찍기*/
	function numberFormat(inputNumber) {
		   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	
	function init() {
		adminHomeView();/*Admin Home*/
		orderListView();/*주문내역뷰*/
		salesView();/*매출현황판*/
		cancelListView();/*반품/교환리스트*/
		ExchangeListView();/*교환/반품 현황판*/
		}
		init();
	
		
	/*주문내역뷰*/
	function orderListView(){
		$.ajax({
			type: "POST",
			url: "/orderListView"
		}).always(function(d,textStatus){
			$("#order_itemlist").html(d);
		});
	}
	/* 결제정보등록*/
	$("#bankbook").submit(function(e){
		e.preventDefault();
		var params = {
				depositor : $("#depositor").val(),
				bank	  : $("#bank").val()
		};
		$.ajax({
			type: "POST",
			url: "/bank",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8"
		}).done(function(d){
			closeModal();
		});
	
	});

	/*주문검색*/
	$("#order_search").click(function(){
		var search = $("#order_search_text").val();
		var params = {search};
		$.ajax({
			type : "POST",
			url : "/selectOrder",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8"
		}).done(function(d){
			$("#order_itemlist").html(d);
		});
	});
	
	/*매출현황판*/
	function salesView(){
		$.ajax({
			type: "POST",
			url : "/salesView"
		}).done(function(d){
			if(d[0] !== null)	$("#totSales").text("￦ "+numberFormat(d[0].totSales));
			else	$("#totSales").text("￦ 0");
			if(d[0] !== null)	$("#monthSales").text("￦ "+numberFormat(d[1].monthSales));
			else	$("#monthSales").text("￦ 0");
			$("#monthSales").text("￦ "+numberFormat(d[1].monthSales));
			if(d[2] !== null){
				$("#lastMonthSales").text("￦ "+numberFormat(d[2].lastMonthSales));
				$("#salesGap").text("￦ "+numberFormat(d[1].monthSales - d[2].lastMonthSales));
			}
			else {
				$("#lastMonthSales").text("￦ 0");
				$("#salesGap").text("￦ 0");
			}
		})
	}

	/*무통장정렬*/
	$("#deposit_range").click(function(){
		$.ajax({
			type: "POST",
			url : "/getDeposit"
		}).done(function(d){
			$("#order_itemlist").html(d);
		});
	});
	
	/*반품/교환리스트*/
	function cancelListView(){
		$.ajax({
			type: "POST",
			url : "/selectCancel"
		}).done(function(d){
			$("#cancel_List").html(d);
		});
	}
	
	/*승인처리*/
	$("#approve").click(function(){
		var params = [];
		$("#cancel_List input:checkbox").each(function(i){
			if($("#cancel_List input:checkbox").eq(i).is(":checked") == true){
				params[i] = {no : $("#cancel_List ul").eq(i).children(".checkNo").text()};
				}
		})
		console.log(params);
		
		$.ajax({
			type: "PATCH",
			url : "/approve",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8"
		}).done(function(d){
			if(d > 0){
				$("#cancel_List").load(window.location.href + "#cancel_List");
			}
		})
	});
	
	/*거절처리*/
	$("#denial").click(function(){
		var params = [];
		$("#cancel_List input:checkbox").each(function(i){
			if($("#cancel_List input:checkbox").eq(i).is(":checked") == true){
				params[i] = {no : $("#cancel_List ul").eq(i).children(".checkNo").text()};
				}
		})
		console.log(params);
		
		$.ajax({
			type: "PATCH",
			url : "/denial",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8"
		}).done(function(d){
			if(d > 0){
				$("#cancel_List").load(window.location.href + "#cancel_List");
			}
		})
	});
	
	/*교환정렬*/
	$("#selectExchange").click(function(){
		$.ajax({
			type: "POST",
			url : "/selectExchange"
		}).done(function(d){
			$("#cancel_List").html(d);
		});
	});
	
	/*반품정렬*/
	$("#selectRefund").click(function(){
		$.ajax({
			type: "POST",
			url : "/selectRefund"
		}).done(function(d){
			$("#cancel_List").html(d);
		});
	});
	/*전체보기*/
	$("#selectAllExchange").click(function(){
		cancelListView()
	});
	
	/*교환/반품 현황판*/
	
	function ExchangeListView(){
		$.ajax({
			type: "POST",
			url : "/ExchangeListView"
		}).done(function(d){
			$("#countRefund").text(numberFormat(d[0].countRefund)+"건");
			$("#countExchange").text(numberFormat(d[1].countExchange)+"건");
			$("#finishExchange").text(numberFormat(d[2].finishExchange)+"건");
			$("#finishRefund").text(numberFormat(d[3].finishRefund)+"건");
		});
	}
	
	/*Admin Home*/
	function adminHomeView(){
		$.ajax({
			type: "POST",
			url : "/adminHome"
		}).done(function(d){
			console.log(d);
			$("#Home_pay").text(numberFormat(d[0].pay));
			$("#Home_countRefund").text(numberFormat(d[1].countRefund));
			$("#Home_countExchange").text(numberFormat(d[2].countExchange));
			$("#Home_SelectUserCount").text(numberFormat(d[3].SelectUserCount));
			$("#Home_monthUserSignup").text(numberFormat(d[4].monthUserSignup));
			$("#Home_dateSales").text(numberFormat(d[5].dateSales));
			$("#Home_monthSales").text(numberFormat(d[6].monthSales));
			$("#Home_todayLogin").text(numberFormat(d[7].todayLogin));
			$("#Home_monthLogin").text(numberFormat(d[8].monthLogin));
		});
	}
	
	
	
	
	
	
});	
	
	
	
	
	


