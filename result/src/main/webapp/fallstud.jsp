<%@page import="dto.dtostd"%>
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
<%List<dtostd> l=(List<dtostd>) request.getAttribute("stud");%>
<table border="">
<tr>
<th>USN</th>
<th>Name</th>
<th>Mohter Name</th>
<th>Date Of Birth</th>
<th>Kannada</th>
<th>English</th>
<th>Hindi</th>
<th>Maths</th>
<th>Science</th>
<th>Total</th>
<th>Percentage</th>
<th>Deaprtment</th>
<th>Delete</th>
<th>Update</th>
</tr>
<tr>
<%for(dtostd f:l){%>
<th><%=f.getUSN()%></th>
<th><%=f.getName()%></th>
<th><%=f.getMother_name()%></th>
<th><%=f.getDate()%></th>
<th><%=f.getKannada()%></th>
<th><%=f.getEnglish()%></th>
<th><%= f.getHindi()%></th>
<th><%=f.getMaths()%></th>
<th><%=f.getScience()%></th>
<th><%=f.getTotal()%></th>
<th><%=f.getPercentage()%></th>
<th><%=f.getDept()%></th>
<th><a href="delete?usn=<%=f.getUSN()%>">remove</a></th>
<th><a href="upp?usn=<%=f.getUSN()%>">update</a></th>
</tr>
<%}%>
</body>
</html>