<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가위, 바위, 보</title>
<style type="text/css">
* {
text-align: center;
}
button {
    width: 80px;
    height: 80px;
    font-size: x-large;
    border-radius: 8px;
}
#result > div {
	font-size: xx-large;
}
#result img {
    width: 120px;
    vertical-align: middle;
    border: 2px solid #ddddcd;
    margin: 6px;
    border-radius: 8px;
}
#preload {
    display: none;
}
</style>
<script type="text/javascript" src="/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
$(init);
function init() {
	$('button').on('click', play);
}

var items = ['가위', '바위', '보'];
var images = ['scissors', 'rock', 'paper'];

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
}

function getImgTag(idx) {

	return '<img src="./images/' + images[idx] + '.png" alt="' + items[idx] + '">'
}
</script>
</head>
<body>
	<button>가위</button>
	<button>바위</button>
	<button>보</button>
	<div id="result"></div>
	<div id="preload">
	    <img src="./images/paper.png">
	    <img src="./images/rock.png">
	    <img src="./images/scissors.png">
	</div>
</body>
</html>