<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	*{
		box-sizing: border-box;
	}
	#ena{
	background-color:snow;
	font-family:Arial Rounded MT;
	font-size:30px;
	}
	.topbar {
  overflow: hidden;
  background-color: gainsboro;
	}
	.topbar a {
  float: left;
  color: darkgoldenrod;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  font-family:Arial Rounded MT;
}
	.topbar a:hover {
  background-color: gray;
  color: black;
  transition: 0.5s;
}
	body{
		background-size: cover;
	}
	button:hover{
		background-color: limegreen;
		color:snow;
		transition: 0.5s;
	}
	input:focus{
		background-color: antiquewhite;
		transition: 0.5s;
	}
input[type=submit],input[type=reset]
	{
		width: auto;
		height:40px;
		font-family: fantasy;
		font-size: 30px;
		border-bottom-style: ridge;
		border-color: indianred;
		font-weight: 100;
		background-color: white;
	}
	input[type=submit]:hover,input[type=reset]:hover{
		transition: 0.5s;
		background-color: indianred;
		color: white;
	}
.formheading1{  
    background-color:BLUE;  
    color:pink;  
    padding:0px;  
    text-align:center;  
} 
.formheading2{  
    background-color:BLUE;  
    color:white;  
    padding:0px;  
    text-align:center;  
}   
.banner
{

margin:0px;
padding:0;
height:180px;
overflow:hidden;
border:solid;
background-color:Blue;
}
.temp{
		width:550px;
		height:auto;
		border: 2px solid red;
		border-radius: 8px;
		background-color: skyblue;
		opacity: 0.7;
		margin-left: 30px;
}
.design
{
width:95%;
padding:7px;
border-radius:8px;
font-size:20px;
font-family: Arial Rounded MT;
}

</style>
<title>Register</title>
</head>
<body background="i/registerback.jpg">
<header>
<center>
<div class="banner"> 
<img src="banklogo.jpg" align="left"> 
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1> 
<h5 class="formheading2">we promise your happiness...</h5> 
</div>
</center>
</header>
<div class="topbar">
  <a href="home.html">Home</a>
  <a href="savtnc.html">Online Saving Account Opening</a>
  <a href="Locker.jsp">Apply For Lockers</a>
  <a href="about.html">About</a>
</div>
<br><br>

<div class="temp">
<h1 style="font-family: Elephant;font-size: 30px;color:darkred;text-shadow: 2px 2px  rgba(0,0,0,0.5);text-align: center;">REGISTER FOR<br>INTERNET BANKING</h1>
<form action="RegiServlet" method="post">
<fieldset>
<table cellspacing="8" width="500px">
<tr><th style="width: 50%">ACCOUNT NO.:</th><th style="width: 50%"><input class="design" type="text" name="uacc"></th></tr>
<tr><th style="width: 50%">USERNAME:</th><th style="width: 50%"><input class="design" type="text" name="uname" autocomplete="off"></th></tr>
<tr><th style="width: 50%">PASSWORD:</th><th style="width: 50%"><input class="design" type="password" name="upass"></th></tr>
<tr><th style="width: 50%">MOBILE NO.:</th><th style="width: 50%"><input class="design" type="text" style="width:22%" placeholder="+91" readonly><input class="design" Style="width:70%" type="text" name="umob"></th></tr>
<tr><th style="width: 50%">E-MAIL:</th><th style="width: 50%"><input class="design" type="email" name="uem"></th></tr>
</table>
<center>
<input type="submit" value="Register">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="clear">
	</center>
</fieldset>
</form>
<center>
<h2>Already have an account?</h2>
<a href="Login.jsp"><button style="width: 250px;height: 51px;font-size: 25px;font-family: OCR A; border-radius: 7px;border-color: limegreen;">LOGIN HERE</button></a>
	</center>
	<br><br>
</div>


</body>
</html>