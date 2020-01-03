/**
 * Payment JS
 */

function openModal() {
	const modal = document.querySelector('.js-modal');
	modal.style.display = 'block';
}

function closeModal() {
	const modal = document.querySelector('.js-modal');
	modal.style.display = 'none';
}

function backPage() {
	history.back();
}

function bankOpen() {
	var bankBtn = document.querySelector('.js-bankBtn');
	var bankPage = document.querySelector('#bankpage');
	if(bankBtn.checked){
		bankPage.classList.add('show');
	}
	else
		bankPage.classList.remove('show');
}

function countBtn(e, target, x) {
	const parent = target.parentNode;
	const count = parent.querySelector('.js-count');
	if (x === 1)
		count.value++;
	else {
		if (count.value > 1)
			count.value--;
	}
}
function init() {
}

init();