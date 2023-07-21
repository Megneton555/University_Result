<%@page import="dto.dtostd"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="ISO-8859-1">
  <title>Update</title>
  <link rel="stylesheet" href="css/upd.css">
  </head>
  <body>
       <%dtostd d=(dtostd)request.getAttribute("sad");%>
       <div class="container">
            <div class="wrapper">
                <div class="content-heading">
                    <h2>Update the <div>Details</div></h2>
                </div>
                <div class="form">  
                    <form action="heaven" method="post">
                        <p class="input-field">
                            <input type="text" name="usn" value="<%=d.getUSN()%>" readonly="readonly">
                            <span>USN</span> 
                        </p>
                        <p class="input-field">
                            <input type="text" name="name" value="<%=d.getName()%>">
                            <label>Student name</label> 
                        </p>
                        <p class="input-field">
                            <input type="text" name="mname" value="<%=d.getMother_name()%>">
                            <label>Mother name</label> 
                        </p>
                        <p class="input-field">
                            <input type="text" name="date" value="<%=d.getDate()%>">
                            <label>DOB</label> 
                        </p>
                        <p class="input-field">
                            <input type="text" name="eng" value="<%=d.getEnglish()%>">
                            <label>English</label> 
                        </p>
                        <p class="input-field">
                            <input type="text" name="hin" value="<%=d.getHindi()%>">
                            <label>Hindi</label> 
                        </p> 
                        <p class="input-field">
                            <input type="text" name="kan" value="<%=d.getKannada()%>">
                            <label>Kannada</label> 
                        </p>
                        <p class="input-field">
                            <input type="text" name="mat" value="<%=d.getMaths()%>">
                            <label>Mathematics</label>
                        </p>
                        <p class="input-field">
                            <input type="text" name="scs" value="<%=d.getScience()%>">
                            <label>Science</label> 
                        </p>
                        <p class="input-field">
                            <button>submit</button>
                        </p>
                    </form>
                </div>    
            </div>
        </div>   
  </body>
</html>