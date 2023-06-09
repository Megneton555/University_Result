<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="upd">
<input type="number" name="id" value="<%=request.getParameter("id")%>">
<input type="text" name="name" value="<%=request.getParameter("name")%>">

<%if(request.getParameter("gender").equals("male")){ %>
male: <input type="radio" name="gender" value="male" checked="checked">
female: <input type="radio" name="gender" value="female">
<%} else{%>
male: <input type="radio" name="gender" value="male" >
female: <input type="radio" name="gender" value="female" checked="checked">

<%} %>
<button>update</button>


</form>
</body>
</html>