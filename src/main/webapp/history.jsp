<%@page import="com.klef.ep.services.TransactionService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.klef.ep.models.Transaction"%>
    <%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.User"%>
<%@page import="java.util.*"%>
<%
    User us = (User)session.getAttribute("us"); // emp is session attribute
    if(us == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<title>SpendSmart</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar bg-dark" data-bs-theme="dark">
  <div>
    <a class="navbar-brand" style="color:white">History</a>
  </div>
  <div class="navbar-nav ml-auto">
      <a href="userhome.jsp" class="btn btn-primary">Home</a>
  </div>
</nav>
     
     <table class="table table-striped">
           <tr>
              <th scope="col">Transaction Type</th>
              <th scope="col">Transaction Name</th>
              <th scope="col">Amount</th>
          </tr>   
<%
InitialContext context = new InitialContext();
TransactionService transactionService = (TransactionService) context.lookup("java:global/EPPROJECT/TransactionServiceImpl!com.klef.ep.services.TransactionService");

List<Transaction> trlist = transactionService.viewAllTransactions(us);

for(Transaction tra : trlist)
{
	  %>
        <tr>
	    	  <td><%=tra.getTranstype()%></td>
	    	  <td><%=tra.getTransname()%></td>
	    	  <td><%=tra.getTransamount()%></td>   
	    </tr>
    
    <%
}

%>
</table>
     
     
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>