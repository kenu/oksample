<%@page import="net.okjsp.gmy.WordService"%><%@ page language="java" contentType="text/javascript; charset=utf-8"
    pageEncoding="utf-8"%><%
WordService service = new WordService();
%><%= service.getJSON() %>