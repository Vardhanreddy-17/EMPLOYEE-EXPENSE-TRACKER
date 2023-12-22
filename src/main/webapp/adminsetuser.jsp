<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.klef.ep.services.UserService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%@page import="java.net.URLEncoder"%>
<%

InitialContext context = new InitialContext();
UserService userService = (UserService) context.lookup("java:global/EPPROJECT/UserServiceImpl!com.klef.ep.services.UserService");

String name = request.getParameter("name");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");

String uincome = request.getParameter("income");
int income =  (Integer) Integer.parseInt(uincome);

String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String contact = request.getParameter("contact");

User us = new User();
us.setName(name);
us.setGender(gender);
us.setDob(dob);
us.setIncome(income);
us.setEmail(email);
us.setPassword(pwd);
us.setContactno(contact);

userService.addUser(us);


String text="Added User Succesfull";
String redirectURL="adminadduser.jsp?text="+URLEncoder.encode(text,"UTF-8");
response.sendRedirect(redirectURL);


%>