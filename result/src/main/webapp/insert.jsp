<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="ISO-8859-1">
  <title>Form</title>
  <link rel="stylesheet" href="css/insert.css">
  </head>
    <body>
        <div class="container">
            <div class="wrapper">
                <div class="content-heading">
                    <h2>Fill the <div>Details</div></h2>
                </div>
                <div class="form">
                    <form action="insertt" method="post">
                        <p class="input-field">
                            <input type="text" name="usn" required>
                            <label>USN</label>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="name" required>
                            <label>Name</label>
                        </p>    
                        <p class="input-field">
                            <input type="date" name="date" required>
                            <span>Date</span>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="mname" required>
                            <label>Mother name</label>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="kan" required>
                            <label>kannada</label>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="eng" required>
                            <label>English</label>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="hin" required>
                            <label>Hindi</label>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="scs" required>
                            <label>Science</label>
                        </p>  
                        <p class="input-field">
                            <input type="text" name="mat" required>
                            <label>Mathematics</label>
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