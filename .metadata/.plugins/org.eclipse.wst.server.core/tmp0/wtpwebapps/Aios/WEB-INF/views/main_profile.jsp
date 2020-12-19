<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%request.setAttribute("user", request.getAttribute("user")); %>

<%-- <%@page import="java.sql.*;" %>

<%
	Connection connection;
	PreparedStatement statement;
	ResultSet result;
	Class.forName("com.mysql.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","");
		
	statement = connection.prepareStatement("SELECT `name`, `surname`, `email`, `pass` FROM `employee` WHERE `empid` ='"+request.getParameter("id")+"';");
	result = statement.executeQuery();
	System.out.println(request.getParameter("id"));
%> --%>

<!DOCTYPE html>
<html>

<head>
  <title>profile</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css"
    integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
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
h1{
  font-size: 30px;
  margin-top: 5px;
  padding: 1px 20px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}
h2{
  margin-top: 1px;
  margin-left: 30px;
  padding: 1px 20px;
  font-size: 30px;
  font-family: 'Times New Roman', Times, serif;
}
h5{
  margin-top: 1px;
  margin-left: 50px;
  padding: 3px 20px;
  font-size: 20px;
  font-family: 'Times New Roman', Times, serif;
}
h6{
  margin-top: 1px;
  margin-left: 50px;
  padding: 1px 20px;
  font-size: 20px;
  font-family: 'Times New Roman', Times, serif;
}
h3{
  margin-top: 1px;
  margin-left: 500px;
  padding: 1px 20px;
  font-size: 20px;
  font-family: 'Times New Roman', Times, serif;
}
form{
  margin-left: 300px;
  margin-top: 50px;
}
  </style>
</head>

<body>  
      <div id="pic">
        <a href="<%=request.getContextPath()%>/index">
          <img src="pic.png">
        </a>
      </div>

    <b><h1 class="h-primary" > Personal Info </h1></b><br>
    <div id="photo">
        <img src="https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"
          width="200" height="200" >
        </div>
        <%-- <% if(result.first()){ %> --%>
                <div class="container">
                  <div class="content-center">
                    <div class="h2 title">${user.name} ${user.surname}</div>
                    <p class="category text-white">Web Developer, Graphic Designer,  Photographer</p>
                    </div>
                </div>
        </div>
        <div class="section" id="about">
            <div class="container">
              <div class="card" data-aos="fade-up" data-aos-offset="10">
                <div class="row">
                  <div class="col-lg-6 col-md-12">
                    <div class="card-body">
                      <div class="h4 mt-0 title">About</div>
                      <p>Hello! I am ${user.name} ${user.surname}. Web Developer, Graphic Designer and Photographer.</p>
                      <p>Creative profile page in a HTML . </p>
                    </div>
                  </div>
                  <div class="col-lg-6 col-md-12">
                    <div class="card-body">
                      <div class="h4 mt-0 title">Basic Information</div>
                      <div class="row">
                        <div class="col-sm-4"><strong class="text-uppercase">Age:</strong></div>
                        <div class="col-sm-8">24</div>
                      </div>
                      <div class="row mt-3">
                        <div class="col-sm-4"><strong class="text-uppercase">Email:</strong></div>
                        <div class="col-sm-8">${user.email}</div>
                      </div>
                      <div class="row mt-3">
                        <div class="col-sm-4"><strong class="text-uppercase">Phone:</strong></div>
                        <div class="col-sm-8">+91 8282822828</div>
                      </div>
                      <div class="row mt-3">
                        <div class="col-sm-4"><strong class="text-uppercase">Address:</strong></div>
                        <div class="col-sm-8">Sector A4, City Center, Mumbai, India</div>
                      </div>
                      <div class="row mt-3">
                        <div class="col-sm-4"><strong class="text-uppercase">Language:</strong></div>
                        <div class="col-sm-8">English, Hindi, Marathi,</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          
         <form> 
          <div class="card-columns align-center-up">
            <div class="card bg-primary">
              <div class="card-body text-center">
                   <p class="card-text">Department Notice</p>
                   <a href="#" class="btn btn-danger">GO</a>
              </div>
            </div>
            <div class="card bg-warning">
              <div class="card-body text-center">
                <p class="card-text">Activities</p>
                <a href="#" class="btn btn-danger">GO</a>
              </div>
            </div>
            <div class="card bg-success">
              <div class="card-body text-center">
                <p class="card-text">Salary Details </p>
                <a href="#" class="btn btn-danger">GO</a>
              </div>
            </div>
            <div class="card bg-info">
              <div class="card-body text-center">
                <p class="card-text">Leave portal</p>
                <a href="<%=request.getContextPath() %>/leave" class="btn btn-danger">GO</a>
              </div>
            </div> 
        </div> 
        </div>
        </form>
  

  <!-- brfore #667eea indigo-500 -->
  <!-- onhover #5a67d8 indigo-600   -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
</body>

</html>