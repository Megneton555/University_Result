<%@page import="java.awt.Window"%>
<%@page import="dto.dtostd"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<%dtostd d=(dtostd)request.getAttribute("sadiq");%>
<center>
<table border="">

<tr>
<th>USN</th>
<th><%=d.getUSN()%>
</tr>
<tr>
<th>name</th>
<th><%=d.getName()%>
</tr>
<tr>
<th>Mother Name</th>
<th><%=d.getMother_name()%>
</tr>
<tr>
<th>Date</th>
<th><%=d.getDate()%>
</tr>
<tr>
<th>English</th>
<th><%=d.getEnglish()%>
</tr>
<tr>
<th>hindi</th>
<th><%=d.getHindi()%>
</tr>
<tr>
<th>kannada</th>
<th><%=d.getKannada()%>
</tr>

<tr>
<th>Maths</th>
<th><%=d.getMaths()%>
</tr>

<tr>
<th>Science</th>
<th><%=d.getScience()%>
</tr>

<tr>
<th>total</th>
<th><%=d.getTotal()%>
</tr>

<tr>
<th>Percentage</th>
<th><%=d.getPercentage()%>
</tr>

</table><br>
<button onclick="window.print()">PRINT</button>
</center>
</body>
</html>