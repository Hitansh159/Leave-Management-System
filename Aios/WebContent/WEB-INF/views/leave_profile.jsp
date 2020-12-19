<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@page import="in.Aios.model.ApplicationModel" %>
<%@page import="in.Aios.model.LoginModel;" %>
        
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <title>LEAVE PORTAL Profile Page</title>
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
    #photo{
        margin: 50px 50px;
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
    h2{
      margin-top: 30px;
    }
    h4{
      margin-left: 40px;
    }
    h5{
      margin-left: 10px;
    }
    @font-face {
  font-family: OpenSans-Regular;
  src: url('../fonts/OpenSans/OpenSans-Regular.ttf'); 
}

* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}

body, html {
	height: 50%;
	font-family: sans-serif;
}

a {
	margin: 0px;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

a:focus {
	outline: none !important;
}

a:hover {
	text-decoration: none;
}

p {margin: 0px;}

ul, li {
	margin: 0px;
	list-style-type: none;
}

input {
  display: block;
	outline: none;
	border: none !important;
}

textarea {
  display: block;
  outline: none;
}

textarea:focus, input:focus {
  border-color: transparent !important;
}

button {
	outline: none !important;
	border: none;
	background: transparent;
}

button:hover {
	cursor: pointer;
}

iframe {
	border: none !important;
}

.limiter {
  width: 100%;
  margin: 0 auto;
}

.container-table100 {
  width: 80%;
  height: 300px;
  background: #c850c0;
  background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);
  background: -o-linear-gradient(45deg, #4158d0, #c850c0);
  background: -moz-linear-gradient(45deg, #4158d0, #c850c0);
  background: linear-gradient(45deg, #4158d0, #c850c0);

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  padding: 33px 30px;
  margin-left: 150px;
  margin-top: 50px;
}

.wrap-table100 {
  width: 1170px;
}

table {
  border-spacing: 1;
  border-collapse: collapse;
  background: white;
  border-radius: 10px;
  overflow: hidden;
  width: 80%;
  margin: 0 auto;
  position: relative;
}
table * {
  position: relative;
}
table td, table th {
  padding-left: 8px;
}
table thead tr {
  height: 60px;
  background: #36304a;
}
table tbody tr {
  height: 50px;
}
table tbody tr:last-child {
  border: 0;
}
table td, table th {
  text-align: left;
}
table td.l, table th.l {
  text-align: right;
}
table td.c, table th.c {
  text-align: center;
}
table td.r, table th.r {
  text-align: center;
}


.table100-head th{
  font-family: OpenSans-Regular;
  font-size: 18px;
  color: #fff;
  line-height: 1.2;
  font-weight: unset;
}

tbody tr:nth-child(even) {
  background-color: #f5f5f5;
}

tbody tr {
  font-family: OpenSans-Regular;
  font-size: 15px;
  color: #808080;
  line-height: 1.2;
  font-weight: unset;
}

tbody tr:hover {
  color: #555555;
  background-color: #f5f5f5;
  cursor: pointer;
}

.column1 {
  width: 260px;
  padding-left: 40px;
}

.column2 {
  width: 160px;
}

.column3 {
  width: 245px;
}

.column4 {
  width: 110px;
  
}


@media screen and (max-width: 992px) {
  table {
    display: block;
  }
  table > *, table tr, table td, table th {
    display: block;
  }
  table thead {
    display: none;
  }
  table tbody tr {
    height: auto;
    padding: 37px 0;
  }
  table tbody tr td {
    padding-left: 40% !important;
    margin-bottom: 24px;
  }
  table tbody tr td:last-child {
    margin-bottom: 0;
  }
  table tbody tr td:before {
    font-family: OpenSans-Regular;
    font-size: 14px;
    color: #999999;
    line-height: 1.2;
    font-weight: unset;
    position: absolute;
    width: 40%;
    left: 30px;
    top: 0;
  }
 
  tbody tr {
    font-size: 14px;
  }
}

@media (max-width: 576px) {
  .container-table100 {
    padding-left: 15px;
    padding-right: 15px;
  }
}
    </style>
</head>
<body>
    <!-- Nav tabs -->
    <ul class="nav nav-pills" id="navId">
        <div id="pic">
        <a href="<%=request.getContextPath()%>/index">
          <img src="pic.png">
        </a>
        </div>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/leave" class="nav-link active">Profile</a>
      </li>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/application" class="nav-link">Application</a>
      </li>
      
<!-- checking if user is Boss or not and displaying content on its basis -->
      <c:set var = "user" scope = "session" value = "${user}"/>
      <c:if test = "${user.desig == 'Boss'}">
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/status" class="nav-link">Accept or Reject</a>
      </li>
      <li class="nav-item">
        <a href="<%=request.getContextPath()%>/bonus" class="nav-link">Bonus leaves</a>
      </li>
      </c:if>

       <li class="nav-item">
        <a href="<%=request.getContextPath()%>/index" class="nav-link">Logout</a>
      </li>
    </ul>

<!-- displaying personal info of user from user data -->  
    <div class="container">
        <h2>Personal Details</h2>

        <div class="card" style="width:400px">
          <div id="photo">
            <img src="https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"
              width="200" height="200" >
            </div>
          <div class="card-body">
            <h4 class="card-title">${user.name } ${user.surname } </h4>
            <h5 class="card-text"> Designation:Assistance Professor</h5>
             </div>
        </div>
        <div class="row">
        <div class="col-sm-6">
        <div class="card w-75">
        <div class="card bg-light text-dark">
            <div class="card-body text-left">
              <p class="card-text">Employee ID:${user.empid}<br>
                Contact no: ${user.email}<br>
                Attendance: ${user.attendance}<br>
                Department :${user.dept}<br>
                Working Days:200<br>
                Leaves Left:${user.days_left}<br>
            </p>
            </div>
            </div>
            </div>
            </div>
          	</div>
        </div>
        
        <!-- looping through leave data of user -->
<c:forEach items="${leave_arr}" var="data" varStatus="item">

          <div class="card" style="width: 18rem;">
  			<div class="card-body">
	   			<h5 class="card-title">Applied Leave </h5>
	    		<h6 class="card-subtitle mb-2 text-muted"></h6>
			    <p class="card-text">Applied leave type:
			    <c:out value="${data.leave_type}"/><br>
			    From:
			    <c:out value="${data.from_date}"/><br>
			    to:
				<c:out value="${data.to_date}"/><br>
			    Status : 
				<c:out value="${data.status}"/>
			    </p>
			    <a href="cancel.jsp?qid=${data.id}&id=${data.empid}" class="card-link">Cancel</a>
			   <!--  <a href="" class="card-link">update</a> -->
			  </div>
			</div>
</c:forEach>  
          <div class="limiter">
            <div class="container-table100">
              <div class="wrap-table100">
                <div class="table100">
                  <table>
                    <thead>
                      <tr class="table100-head">
                        <th class="column1">Types of Leaves</th>
                        <th class="column2">Leaves Taken</th>
                        <th class="column3">Total Leaves</th>
                        <th class="column4">Leaves Left</th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td class="column1">Personal  Leaves</td>
                          <td class="column2">3</td>
                          <td class="column3">5</td>
                          <td class="column4">2</td>
                        </tr>
                        <tr>
                          <td class="column1">Casual Leaves</td>
                          <td class="column2">2</td>
                          <td class="column3">4</td>
                          <td class="column4">2</td>
                        </tr>
                        <tr>
                          <td class="column1">Sick Leaves</td>
                          <td class="column2">3</td>
                          <td class="column3">6</td>
                          <td class="column4">3</td>
                        </tr>
                        <tr>
                          <td class="column1">Total</td>
                          <td class="column2">8</td>
                          <td class="column3">15</td>
                          <td class="column4">7</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
           </div>
        </div>  
</body>
</html>