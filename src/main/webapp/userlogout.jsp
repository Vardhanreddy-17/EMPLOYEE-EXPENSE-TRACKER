<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.invalidate();
//session.removeAttribute("us");
response.sendRedirect("userlogin.jsp");
%>