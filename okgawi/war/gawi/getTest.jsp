<%@page import="java.util.List"%>
<%@page import="com.google.appengine.api.datastore.Entity"%>
<%@page import="net.okjsp.gmy.GawiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getTest</title>
</head>
<body>
<%
	GawiDao dao = new GawiDao();
	List<Entity> list = dao.fetchAll();
	
	for (Entity record : list) {
%><p><b><%= record.getProperty("datetime") %></b>
 <%= record.getProperty("first") %>
 <%= record.getProperty("second") %>
 <%= record.getProperty("ip") %>
 </p>
<%
	}
%>
<%= list.size() %>
</body>
</html>