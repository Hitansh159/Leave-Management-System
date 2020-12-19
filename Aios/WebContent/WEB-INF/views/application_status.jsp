<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*;" %>

<%
	Connection connection;
	PreparedStatement statement,statement2;
	ResultSet result,result2;
	Class.forName("com.mysql.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","");
	
	statement = connection.prepareStatement("SELECT * FROM `leave_table` WHERE 1");
	result = statement.executeQuery();
	
%>

<html>
  <head>
    <meta charset="utf-8">
    <title>Leave Application Status</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
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
.row{
  margin-left: 80px;
  margin-top: 20px;
}
.col-sm-3{
  margin-left: 40px;
  margin-top:20px;
  background-color: lightblue;
}
.card-body{
  background-color: rgb(221, 241, 182);
  font-family: 'Courier New', Courier, monospace;
}
h5{
  font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  font-size: 25px;
}
</style>
    </head> 
    <hr style="height: 2px;width: 100%;"></hr>
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
        <a href="<%=request.getContextPath()%>/application" class="nav-link">Application</a>
      </li>
      
<!-- checking if user is Boss or not and displaying content on its basis -->
      <c:set var = "user" scope = "session" value = "${user}"/>
      <c:if test = "${user.desig == 'Boss'}">
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/status" class="nav-link active">Accept or Reject</a>
      </li>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/bonus" class="nav-link">Bonus leaves</a>
      </li>
      </c:if>

       <li class="nav-item">
        <a href="<%=request.getContextPath()%>/index" class="nav-link">Logout</a>
      </li>
    </ul>
    
    <div class="row" style="padding: 1px;">
    <%
    	while(result.next()){
    		String id=result.getString("empid");
    		String dept=result.getString("dept");
    		String lt=result.getString("leave_type");
    		String from=result.getString("from_date");
    		String to=result.getString("to_date");
    		String subs=result.getString("substitude");
    		String status=result.getString("status");
    		
    		if(status.equals("awaiting approval")){
    		
    %>
		<div class="col-sm-3">
        <div class="card" style="width: 18rem;">
          <img src="https://www.clipartmax.com/png/middle/109-1092953_people-clipart-outing-people-white-vector-png.png" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Applicant Details</h5>
            <p class="card-text">Name :<% out.print(id);%><br>
              Leave Type:<% out.print(lt);%> <br>
              Attendance: 9o%<br>
              Dept :<% out.print(dept);%><br>
              From :<% out.print(from);%><br>
              To :<% out.print(to);%><br>
              Working Days:200<br>
              Leaves Left:8<br>
              Substitute Recommended:<br><% out.print(subs);%>
            </p>
            <a  href="accept.jsp?qid=<%=result.getString("id") %>&id=<%=request.getParameter("id")%>" class="btn btn-primary">Accept</a>
            <a  href="reject.jsp?qid=<%=result.getString("id") %>&id=<%=request.getParameter("id")%>" class="btn btn-danger">Reject</a>
          </div>
        </div>
      </div>
    <%
    		}
   		}
    %>
    
   
    <!-- Tab panes -->
    <div class="tab-content">
      <div class="tab-pane fade show active" id="tab1Id" role="tabpanel"></div>
      <div class="tab-pane fade" id="tab2Id" role="tabpanel"></div>
      <div class="tab-pane fade" id="tab3Id" role="tabpanel"></div>
      <div class="tab-pane fade" id="tab4Id" role="tabpanel"></div>
      <div class="tab-pane fade" id="tab5Id" role="tabpanel"></div>
    </div>
    
    <script>
      $('#navId a').click(e => {
        e.preventDefault();
        $(this).tab('show');
      });
    </script>
    <!-- all required inputs -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
  </body>
</html>