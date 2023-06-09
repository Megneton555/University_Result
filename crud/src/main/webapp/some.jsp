<%@page import="dto.dto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<dto> l= (List<dto>)   request.getAttribute("sadiq") ;%>
<table border="">
<tr>
<th>EID</th>
<th>gender</th>
<th>name</th>
<th>remove</th>
<th>update</th>
</tr>
<%for(dto c:l) {%>
<tr>
<td><%=c.getEID()%></td>
<td><%=c.getGender()%></td>
<td><%=c.getName()%></td>
<td><a href="remove?id=<%=c.getEID()%>">remove</a>
<td><a href="upd.jsp?
id=<%=c.getEID()%>
&gender=<%=c.getGender()%>
&name=<%=c.getName()%>">update</a></td>
</tr>



<%} %>

</table>
</body>
</html>