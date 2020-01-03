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

