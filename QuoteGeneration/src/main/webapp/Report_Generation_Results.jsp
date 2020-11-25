<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page import="java.util.*,com.insurance.quote.entity.Accounts" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report Generation Results</title>
<style>
body{
background-color:lightblue;
}
table,td{
border:2px solid black;
}
td{
cell-padding:10px;}
</style>
</head>
<body>
<em><span style="float:right">Logged in as <%=session.getAttribute("user") %></span></em>
<div align="center">
<h2>Policy Detailed View</h2>
<%List<Accounts> list=(ArrayList<Accounts>)request.getAttribute("Account"); %>
<%List<String> list1=(ArrayList<String>)request.getAttribute("Ques"); %>
<%List<String> list2=(ArrayList<String>)request.getAttribute("Ans"); %>
<table>

<tr><td>Insured Name</td><td><%=list.get(0).getInsured_Name() %></td></tr>
<tr><td>Insured State </td><td><%=list.get(0).getInsured_State() %></td></tr>
<tr><td>Insured Zip</td><td><%=list.get(0).getInsured_Zip() %></td></tr>
<tr><td>Business Segment</td><td><%=list.get(0).getBusiness_Segment() %></td></tr>
<% for(int i=0;i<list1.size();i++) { %>
<%!int num=1; %>
<tr><td>Question <%=num++ %></td><td><%=list1.get(i) %></td></tr>
<% }%>
<%for(int i=0;i<list2.size();i++){ %>
<%!int ans=1; %>
<tr><td>Coverage <%=ans++ %></td><td><%=list2.get(i) %></td></tr>
<%} %>
<%String name=request.getAttribute("premium").toString(); %>
<tr><td>Premium Value</td><td><%=name%></td></tr>
</table><br>
<form action="HomePage">
<input type="submit" value="Back" style="margin:10px">
</form>
</div>
</body>
</html>