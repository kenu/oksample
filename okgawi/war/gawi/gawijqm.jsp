<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>가위 바위 보</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
<script type="text/javascript">
$(init);
function init() {
	$("button").on("click", game);
}

function game() {
	var list = [ '가위', '바위', '보' ];
	var selected = $(this).html();
	var mine = 0;
	if (selected == "가위")
		mine = 0;
	if (selected == "바위")
		mine = 1;
	if (selected == "보")
		mine = 2;

	var com = parseInt(Math.random(new Date().getTime()) * 3);

	var result = getResult(mine, com);
	showResult("<div>You: " + list[mine] + "</div><div>Com: " + list[com]
			+ "</div><div>"+result+"</div>");
}

function getResult(mine, com) {
	var result = "";
	var diff = mine - com;
	if (diff == 0) result = "비겼습니다.";
	else if (diff == -1 || diff == 2) result = "당신이 졌습니다.";
	else result = "당신이 이겼습니다.";

	return result;
}

function showResult(result) {
	$("#result").html(result);
}
</script>
</head>
<body>
<div data-role="page">
<div data-role="header"><h2>Header</h2></div>
<div data-role="content">
<div>
<button>가위</button>
<button>바위</button>
<button>보</button>
<div id="result">결과</div>
</div>
</div>
<div data-role="footer"><h2>ETRI</h2></div>

</div>
</body>
</html>
