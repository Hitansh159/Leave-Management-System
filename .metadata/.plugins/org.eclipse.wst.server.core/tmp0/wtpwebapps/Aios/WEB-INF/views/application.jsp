<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <%@page import="java.sql.*;" %>
<%
	Connection connection;
	PreparedStatement statement;
	ResultSet result;
	Class.forName("com.mysql.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","");
	
	statement = connection.prepareStatement("SELECT * FROM `employee` WHERE 1");
	result = statement.executeQuery();
	
%> --%>

<!doctype html>
<html lang="en">
  <head>
    <title>application</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
      <style>
 *{
margin: 0;
padding: 0;

}
#navId{
display: flex;
align-items: center;
}
#navId{
position: relative;
}
#pic{
margin: 10px 10px;
height: 60px;
}
#navId::before{
 content: "";
 background-color: gray;
 position: absolute;
 height: 100%;
 width: 100%;
 z-index: -1;
 opacity: 0.4;
}
#form{
    background-color: lightskyblue;
}
</style>
  </head>
  <body>
    <hr style="height: 2px;width: 90%;"></hr>
    
    <!-- Nav tabs -->
    <ul class="nav nav-pills" id="navId">
        <div id="pic">
        <a href="<%=request.getContextPath()%>/index">
          <img src="pic.png">
        </a>
        </div>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/leave" class="nav-link">Profile</a>
      </li>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/application" class="nav-link active">Application</a>
      </li>
      
<!-- checking if user is Boss or not and displaying content on its basis -->
      <c:set var = "user" scope = "session" value = "${user}"/>
      <c:if test = "${user.desig == 'Boss'}">
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/status?id=<%=request.getParameter("id")%>" class="nav-link">Accept or Reject</a>
      </li>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/bonus?id=<%=request.getParameter("id")%>" class="nav-link">Bonus leaves</a>
      </li>
      </c:if>

       <li class="nav-item">
        <a href="<%=request.getContextPath()%>/index" class="nav-link">Logout</a>
      </li>
    </ul>

      <div>
       	<div class="container"> 
		<div  class="row">
			<div class="col-lg-12-12">  
				<h2 style="text-align: center;color: rgb(25, 19, 80);font-family: Georgia, 'Times New Roman', Times, serif;font-size: 30px;margin-top: 50px;;">Leave Application </h2>
                        <br>
			              
				<form style="text-align: center;" method="post" action="<%=request.getContextPath()%>/application">
                <div class="form-group">
                    <label for="user id"style="text-decoration:bold;">UserId</label><br>               
                    <input type="text" name="id" id="user id" style="width:500px;height:0.5px;padding:15px;border-radius: 5px;background-color: rgb(142, 200, 218);color:  black;">
                </div>
                <div class="form-group">
                    <label for="Department"style="text-decoration:bold;">Department</label><br>               
                    <input type="text" name="dept" id="user id" style="width:500px;height:0.5px;padding:15px;border-radius: 5px;background-color: rgb(142, 200, 218);color:  black;">
                </div>

                <div class="form-group">
                    <label for="leave_type"style="text-decoration:bold;">leave type</label><br>
                    <input type="text" name="leave_type" id="user id" style="width:500px;height:0.5px;padding:15px;border-radius: 5px;background-color: rgb(142, 200, 218);color:  black;">
                </div>
                <div class="form-group">
                    <label for="leave reason"style="text-decoration;">sustitude</label><br>
                    <input type="text" name="subs" id="leave reason" style="width:500px;height:0.5px;padding:15px;border-radius: 5px;background-color: rgb(142, 200, 218);color: black;">

                </div>
                <div class="form-group">
                    <label for="starting"style="text-decoration:bold;">Starting date of leave</label><br>
                    <input type="date" name="from_date" id="duration" class="form-control" style="width:500px;height:0.5px;padding:15px;border-radius: 5px;background-color: rgb(142, 200, 218);color: black;">
                </div>           
                <div class="form-group">
                    <label for="ending"style="text-decoration:bold;">Ending date of leave</label><br>                   
                    <input type="date" name="to_date" id="ending" class="form-control" style="width:500px;height:0.5px;padding:15px;border-radius: 5px;background-color: rgb(142, 200, 218);color: black;">
                </div>
                <div> <input type="submit" name="Submit" style="border-radius: 20px;color:white;margin-left: 500px;width: 100px;height: 50px;background-color:rgb(28, 113, 224);" value="Apply">                
                <div> ${err}  </div>
                </form>
        </div>
    </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>