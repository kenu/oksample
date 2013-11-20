$(init);
function init() {
	$('button').on('click', play);
	hasInternets();
}

var items = ['가위', '바위', '보'];
var images = ['scissors', 'rock', 'paper'];
var onoff;
function play() {
	var comIdx = Math.floor(Math.random() * 3);
	var mine = $(this).html();
	var mineIdx;
	for (var i in items) {
		if (mine === items[i]) {
			mineIdx = i;
		}
	}
	var diff = mineIdx - comIdx;
	var result;
	if (diff === 0) {
		result = '<div>=</div>비겼습니다.';
	} else if (diff === 1 || diff === -2) {
		result = '<div>☜</div>당신이 이겼습니다.';
	} else {
		result = '<div>☞</div>컴퓨터가 이겼습니다.';
	}

	var message = getImgTag(mineIdx) + " : " + getImgTag(comIdx)
	 + '<div>' + result + '</div>';

	$('#result').html(message);
	saveGame("p1", mineIdx, "p2", comIdx);
}

function getImgTag(idx) {
	return '<img src="./images/' + images[idx] + '.png" alt="' + items[idx] + '">'
}

// code from https://gist.github.com/scottjehl/947084
//quick online/offline check
function hasInternets() {
	var s = $.ajax({ 
		type: "HEAD",
		url: window.location.href.split("?")[0] + "?" + Math.random(),
		async: false,
		complete: showStatus
	}).status;
	//thx http://www.louisremi.com/2011/04/22/navigator-online-alternative-serverreachable/	
	return s >= 200 && s < 300 || s === 304;
}
function showStatus(r) {
	var s = r.status;
	onoff = s >= 200 && s < 300 || s === 304;
	$('#online').html(onoff);
}

function saveGame(p1, c1, p2, c2) {
	$.ajax({
		url:'/gawi/save.jsp',
		type: 'post',
		data : {
			'p1' : p1,
			'c1' : c1,
			'p2' : p2,
			'c2' : c2
		},
		complete: function(r) {
			console.log(r.statusCode);
		}
	});
	console.log('console' + p1 + ' ' + c1);
}
