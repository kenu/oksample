<%@page import="java.util.*"
%><%! 
    int v = 70;
%><%
    Random random = new Random();
    v += random.nextInt(10) - 5;
    if (v > 100) {
    	v = 200 - v;
    }
    if (v < 0) {
    	v = -v;
    }
%>{"time": <%= new Date().getTime() %>, "value": <%= v %>}