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
<%dtostd d=(dtostd)request.getAttribute("sad");%>
<form action="heaven" method="post">
<pre>
USN: <input type="text" name="usn" value="<%=d.getUSN()%>"readonly="readonly">
Student name: <input type="text" name="name" value="<%=d.getName()%>">
Mother name: <input type="text" name="mname" value="<%=d.getMother_name()%>">
Date of birth: <input type="text" name="date" value="<%=d.getDate()%>">
English: <input type="text" name="eng" value="<%=d.getEnglish()%>">
Hindi: <input type="text" name="hin" value="<%=d.getHindi()%>">
Kannada: <input type="text" name="kan" value="<%=d.getKannada()%>">
Maths: <input type="text" name="mat" value="<%=d.getMaths()%>">
Science: <input type="text" name="scs" value="<%=d.getScience()%>">
<button>submit</button>
</pre>
</form>
</body>
</html>