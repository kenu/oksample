<%@page import="net.okjsp.gmy.Word"
%><%@ page language="java" contentType="text/javascript; charset=utf-8"
    pageEncoding="utf-8"%><%
Word word = new Word();
%><%= word.getJSON() %>