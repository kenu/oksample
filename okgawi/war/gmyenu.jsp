<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Words</title>
<link rel="stylesheet" href="./css/word.css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$.getJSON("./data.jsp")
	 .success(function(d) {
		 $("#word").html(d.word);
		 $("#source").html(d.source);
	 });
});
</script>
</head>
<body>
<h1>Words</h1>
<ul>
<li><span id="word"></span>
<br><span id="source"></span>
</li>
</ul>
</body>
</html>
