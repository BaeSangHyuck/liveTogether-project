const leaseImg = document.getElementById("lease");
const bargainImg = document.getElementById("bargain");
const housingImg = document.getElementById("housing");
const storeImg = document.getElementById("store");
const imgs = document.getElementsByClassName("a1");

const leaseBtn = document.getElementById("leaseBtn");
const bargainBtn = document.getElementById("bargainBtn");
const housingBtn = document.getElementById("housingBtn");
const storeBtn = document.getElementById("storeBtn");
const btns = document.getElementsByClassName("btns");
const title = document.getElementById("title");
const trade = document.getElementById("trade");
const build = document.getElementById("build");
const construction = document.getElementById("construction");
const offer = document.getElementById("offer");
const down1 = document.getElementById("down1");
const down2 = document.getElementById("down2");
const down3 = document.getElementById("down3");
const down4 = document.getElementById("down4");


leaseBtn.addEventListener("click", function() {
	for (let i = 0; i < btns.length; i++) {
		btns[i].parentElement.style.background = "white";
		btns[i].style.color = "rgb(17, 135, 207)";
		imgs[i].style.display = "none";
	}
	leaseImg.style.display = "block";
	leaseBtn.parentElement.style.background = "rgb(17, 135, 207)";
	leaseBtn.style.color = "white";
	title.innerHTML = "부동산 임대차 계약서"
	trade.innerHTML = "임대(월세)"
	build.innerHTML = "주택, 상가건물 등 부동산 전반(토지 제외)"
	construction.innerHTML = "임차주택의 표시, 계약내용, 특약사항"
	offer.innerHTML = "보급형(부동산 중개사무소에서 자주 써요)"
	down1.style.display="block";
	down2.style.display="none";
	down3.style.display="none";
	down4.style.display="none";
})
bargainBtn.addEventListener("click", function() {
	for (let i = 0; i < btns.length; i++) {
		btns[i].parentElement.style.background = "white";
		btns[i].style.color = "rgb(17, 135, 207)";
		imgs[i].style.display = "none";
	}
	bargainImg.style.display = "block";
	bargainBtn.parentElement.style.background = "rgb(17, 135, 207)";
	bargainBtn.style.color = "white";
	title.innerHTML = "부동산 매매계약서"
	trade.innerHTML = "매매"
	build.innerHTML = "주택, 상가건물 등 부동산 전반(토지 제외)"
	construction.innerHTML = "임차주택의 표시, 계약내용, 특약사항"
	offer.innerHTML = "보급형(부동산 중개사무소에서 자주 써요)"
	down2.style.display="block";
	down1.style.display="none";
	down3.style.display="none";
	down4.style.display="none";
})
housingBtn.addEventListener("click", function() {
	for (let i = 0; i < btns.length; i++) {
		btns[i].parentElement.style.background = "white";
		btns[i].style.color = "rgb(17, 135, 207)";
		imgs[i].style.display = "none";
	}
	housingImg.style.display = "block";
	housingBtn.parentElement.style.background = "rgb(17, 135, 207)";
	housingBtn.style.color = "white";
	title.innerHTML = "주택 임대차 표준계약서"
	trade.innerHTML = "임대(월세)"
	build.innerHTML = "오피스텔, 아파트, 원룸, 단독주택등"
	construction.innerHTML = "임차주택의 표시, 계약내용, 특약사항"
	offer.innerHTML = "법무부 권장 (분쟁방지를 위해 좀 더 꼼꼼해요)"
	down3.style.display="block";
	down1.style.display="none";
	down2.style.display="none";
	down4.style.display="none";
})
storeBtn.addEventListener("click", function() {
	for (let i = 0; i < btns.length; i++) {
		btns[i].parentElement.style.background = "white";
		btns[i].style.color = "rgb(17, 135, 207)";
		imgs[i].style.display = "none";
	}
	storeImg.style.display = "block";
	storeBtn.parentElement.style.background = "rgb(17, 135, 207)";
	storeBtn.style.color = "white";
	title.innerHTML = "상가건물 임대차 표준계약서"
	trade.innerHTML = "임대(월세)"
	build.innerHTML = "지하상가, 대형상가, 점포 등"
	construction.innerHTML = "임차상가건물 표시, 계약내용, 특약사항"
	offer.innerHTML = "법무부 권장 (분쟁방지를 위해 좀 더 꼼꼼해요)"
	down4.style.display="block";
	down1.style.display="none";
	down2.style.display="none";
	down3.style.display="none";
})