<%@page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@page import="com.google.appengine.api.users.UserService"%>
<%@page import="net.okjsp.gmy.Game"%>
<%@page import="net.okjsp.gmy.User"%>
<%@page import="net.okjsp.gmy.GawiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

    String firstName = request.getParameter("p1");
    String secondName = request.getParameter("p2");
	Integer firstChoice = getInteger(request.getParameter("c1"));
	Integer secondChoice = getInteger(request.getParameter("c2"));
	String ip = request.getRemoteAddr();
	
	UserService userService = UserServiceFactory.getUserService();
    com.google.appengine.api.users.User user = userService.getCurrentUser();

	if (user != null) {
		firstName = user.getNickname();
	}

	User firstUser = new User(firstName, firstChoice);
    User secondUser = new User(secondName, secondChoice); 
    Game game = new Game(firstUser, secondUser, ip);
	
    GawiDao dao = new GawiDao();
    dao.save(game);

    System.out.println(game);
%>
<%!
Integer getInteger(String string) {
	try {
		return Integer.parseInt(string);
	} catch (Exception e) {
		return -1;
	}
}
%>