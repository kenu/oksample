<%@page import="com.google.appengine.api.users.User"%>
<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@page import="com.google.appengine.api.users.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%

String sessionId = session.getId();

UserService userService = UserServiceFactory.getUserService();
User user = userService.getCurrentUser();
if (user != null) {
    pageContext.setAttribute("user", user);
%>
<p>Hello, ${fn:escapeXml(user.nickname)} (${fn:escapeXml(user.email)})! (You can
<a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a>.)</p>
<%
} else {
%>
<p>Hello! <%= sessionId %>,
<a href="<%= userService.createLoginURL(request.getRequestURI()) %>">Sign in</a>
</p>
<%
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가위, 바위, 보</title>
<link rel="stylesheet" href="/css/gawi.css">
<script type="text/javascript" src="/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="/js/gawi.js"></script>
</head>
<body>
	<button>가위</button>
	<button>바위</button>
	<button>보</button>
	<div id="result"></div>
	<div id="online"></div>
	<div id="preload">
	    <img src="./images/paper.png">
	    <img src="./images/rock.png">
	    <img src="./images/scissors.png">
	</div>
<script src="http://www.stalk.io/stalk.js"></script>
<script>STALK.init();</script>
</body>
</html>
