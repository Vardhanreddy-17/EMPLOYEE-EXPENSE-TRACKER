<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.klef.ep.services.TransactionService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Transaction"%>
<%@page import="com.klef.ep.models.User"%>
<%
    User us = (User)session.getAttribute("us"); // us is session attribute
    if(us == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<%

InitialContext context = new InitialContext();
TransactionService transactionService = (TransactionService) context.lookup("java:global/EPPROJECT/TransactionServiceImpl!com.klef.ep.services.TransactionService");

String transtype = request.getParameter("amttype");
String transname = request.getParameter("name");

String tam = request.getParameter("amount");
int transamount =  (Integer) Integer.parseInt(tam);
User user_trans_id=us;


Transaction tr = new Transaction();
tr.setTranstype(transtype);
tr.setTransname(transname);
tr.setTransamount(transamount);
tr.setUser_trans_id(user_trans_id);

transactionService.addTransaction(tr);

String text="Transaction Succesfull";
String redirectURL="userhome.jsp?text="+URLEncoder.encode(text,"UTF-8");
response.sendRedirect(redirectURL);


%>