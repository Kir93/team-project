/**
 * Item page JS
 */
// ItemDetail의 위치를 찾아 그 위치에 도달하면 .js-bar 생성

const target = document.querySelector('#itemDetail'); // 요소의 id 값이 target이라 가정
const clientRect = target.getBoundingClientRect(); // DomRect 구하기 (각종 좌표값이 들어있는 객체)
const relativeTop = clientRect.top; // Viewport의 시작지점을 기준으로한 상대좌표 Y 값.

window.addEventListener('scroll', function() {
  var el = document.querySelector('.js-bar');
  
  if(window.scrollY >= relativeTop) el.classList.add('showBar');
  else el.classList.remove('showBar');
});

// 찜한목록 추가 삭제를 위한 Function

function choseItem(){
	const items = document.querySelectorAll(".js-chose");
	if(items[0].innerHTML == "♡"){
		items[0].innerHTML = "♥";
		items[1].innerHTML = "♥";
	}
	else{
		items[0].innerHTML = "♡";
		items[1].innerHTML = "♡";
	}
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

function topPage(){
	window.scroll(0,0);
}