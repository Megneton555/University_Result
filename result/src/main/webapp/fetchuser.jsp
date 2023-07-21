<%@page import="dto.dtoltr"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users</title>
<link rel="stylesheet" href="css/fetchuser.css">
</head>
<body>
<%List<dtoltr> l=(List<dtoltr>)request.getAttribute("saqu");%>
<table border="1px">
<tr bgcolor="lightgreen">
<th>Email</th>
<th>PWD</th>
<th>Department</th>
<th>Delete</th>
</tr>
<tr>
<%for(dtoltr d:l){%>
<td><%=d.getEmail()%></td>
<td><%=d.getPassword()%></td>
<td><%=d.getDept()%></td>
<td><a href="removeuser?el=<%=d.getEmail()%>"><button>remove</button></a></td>
</tr>
<%}%>
</table>
</body>
</html>