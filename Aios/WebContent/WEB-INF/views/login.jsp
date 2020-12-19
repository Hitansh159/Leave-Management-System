<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Loginpage </title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
<style>
*{
    margin: 0;
    padding: 0;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
.photo{
    height: 100%;
    width: 100%;
    background-color:#667eea;
    background-position: center;
    background-size: cover;
    position: absolute;
}
.Form-box{
    width: 350px;
    height: 420px;
    position: relative;
    margin: 5% auto;
    background: rgb(234, 241, 240);
    padding: 5px;
    overflow: hidden;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}
.imgcontainer { position: center; top: 10px; left: 130px;}
.input-group{
    top: 120px;
    margin-left: 10mm;
    position: absolute;
    width: 280px;
    transition: .5s;
}
.input-field{
    width: 100%;
    padding: 15px 0;
    margin: 3px 0;
    border-left: 0;
    border-top: 0;
    border-right: 0;
    border-bottom: 1px solid #999;
    outline: none;
    background: transparent;
}
.submit-btn{
    width: 50%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: 20px 0 20px 65px;
    background: linear-gradient(to right,#9d39ee,#b3c4e7);
    border: 0;
    outline: none;
    border-radius: 30px;
    
}
.check-box{
    margin: 30px 10px 35px 0;
}

</style>
    </head>
    <body>
        <h1>
        <a href="<%=request.getContextPath()%>/index">
          <img src="pic.png">
        </a>
            All In One Security
            </h1>
        <div class="photo">
         <div class="Form-box">
            <div class="button-box">
                <div id="btn"></div>
                
            </div>
            <div class="imgcontainer">
                <img 
                style="width: 70px; height: 70px;" 
                src="data:image/png;base64,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">
            </div>
            <form id="Login" class="input-group" method="post" action="<%=request.getContextPath() %>/login">
                <input type="text" class="input-field" placeholder="User Id" name="id" required>
                <input type="password" class="input-field" placeholder="Enter your password" name="pass" required>
					<div class="alert alert-danger" role="alert">${invalid_login}</div>
	
                <button type="submit" class="submit-btn">Login</button>

            </form>
        </div>
    </div>
</body>
    </html>