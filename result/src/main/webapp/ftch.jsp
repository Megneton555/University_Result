<%@page import="java.awt.Window"%>
<%@page import="dto.dtostd"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="ISO-8859-1">
  <title>Marks card</title>
  <link rel="stylesheet" href="css/ftch.css">
  </head>
  <body> 
        <%dtostd d=(dtostd)request.getAttribute("sadiq");%>
        <table border="1px">
            <tr>
                <th colspan="2">USN : <%=d.getUSN()%></th>
                <th colspan="6">DOB : <%=d.getDate()%></th>
            </tr>
            <tr>
                <th colspan="6">Name : <%=d.getName()%></th>
            </tr> 
            <tr>
                <th colspan="6">Mother Name : <%=d.getMother_name()%></th>
            </tr>
            <tr bgcolor="lightgreen">
                <th>SR</th>
                <th>Subject</th>
                <th>Max marks</th>
                <th>Obtain marks</th>
            </tr>

            <tr>
                <td>01</td>
                <td>English</td>
                <td>100</td>
                <td><%=d.getEnglish()%></td>
            </tr>
            <tr>
                <td>02</td>
                <td>Hindi</td>
                <td>100</td>
                <td><%=d.getHindi()%></td>
            </tr>
            <tr>
                <td>03</td>
                <td>Kannada</td>
                <td>100</td>
                <td><%=d.getKannada()%></td>
            </tr>
            <tr>
                <td>04</td>
                <td>Mathematics</td>
                <td>100</td>
                <td><%=d.getMaths()%></td>
            </tr>
            <tr>
                <td>05</td>
                <td>Science</td>
                <td>100</td>
                <td><%=d.getScience()%></td>
            </tr>
            <tr>
                <th colspan="2">Total marks : <%=d.getTotal()%></th>
                <th colspan="6">Percentage : <%=d.getPercentage()%></th>
            </tr>
        </table>
        <button class="print" onclick="window.print()">Print</button>
    </body>
</html>