<%@page import="dto.dtostd"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/fetchall.css">
</head>
<body>
<%List<dtostd> l=(List<dtostd>)request.getAttribute("saqlain");%>
<table border="1px">
<tr bgcolor="lightgreen">
<th>USN</th>
<th>Name</th>
<th>Mother Name</th>
<th>DOB</th>
<th>Kannada</th>
<th>English</th>
<th>Hindi</th>
<th>Mathematics</th>
<th>Science</th>
<th>Total</th>
<th>Percentage</th>
<th>Department</th>
<th>Delete</th>
<th>Update</th>
</tr>
<tr>
<%for(dtostd f:l){%>
<%String dp=(String)request.getAttribute("dep");%>
<%if(f.getDept().equals(dp)){%>
<td><%=f.getUSN()%></td>
<td><%=f.getName()%></td>
<td><%=f.getMother_name()%></td>
<td><%=f.getDate()%></td>
<td><%=f.getKannada()%></td>
<td><%=f.getEnglish()%></td>
<td><%=f.getHindi()%></td>
<td><%=f.getMaths()%></td>
<td><%=f.getScience()%></td>
<td><%=f.getTotal()%></td>
<td><%=f.getPercentage()%></td>
<td><%=f.getDept()%></td>
<td><a href="delete?usn=<%=f.getUSN()%>"><button>remove</button></a></td>
<td><a href="upp?usn=<%=f.getUSN()%>"><button>update</button></a></td>
</tr>
<%}%>
<%}%>
</table>
</body>
</html>