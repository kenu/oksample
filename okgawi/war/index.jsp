<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blank</title>
</head>
<body>
	<%=System.getProperty("java.version")%>
	<br>
	<c:import url="gmyenu.jsp" />

	<br>
	<a href="./gawi/gawi.jsp"><img src="./gawi/images/scissors.png"
		style="width: 30px;" alt="scissors"></a>
</body>
</html>