<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script>
	function acnt()
		{
			var a=document.getElementById("acc1");
			if(document.getElementById("r1").checked){
				a.style.display="table-row";
				return a;
			}
			
			else if(document.getElementById("r2").checked){
				a.style.display="none";
				return a;
			}
			return false;
		}
	</script>
<style>
    body{
		background-size: cover;
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

    th{
        width:50%;
        font-size: 20px;
        font-family: Berlin Sans FB;
		
		 }
	
    select{
        text-emphasis-color:red;
    }
.lockerform{
    background-color: white;
    width: 800px;
    border-radius: 8px;
	border: 2px solid red;
    }
.formheading{    
    color:indianred;  
    padding:0px;  
    text-align:left;  
} 
.formheading1{  
    background-color:BLUE;  
    color:pink;  
    padding:0px;  
    text-align:center;
    font-family:Wide Latin;
} 
.formheading2{  
    background-color:BLUE;  
    color:white;  
    padding:0px;  
    text-align:center;  
}
	p{
		color: blue;
		display: inline;
	}
.banner
{
margin:0px;
padding:0;
height:35%;
overflow:hidden;
border:solid;
background-color:Blue;
}
input[type=text]{
    width: 95%;
    font-size: 20px;
    font-family:Arial Rounded MT;
    padding:12px 10px;
    }
	input[type=submit],input[type=reset]{
		height: 53px;
		width: 120px;
		font-size:20px;
		font-family:Carlito;
		background-color: white;
		border: 2px solid;
		border-color: coral;
	}
	input[type=submit]:hover{
		background-color: coral;
		color: snow;
		transition: 0.3s;
	}
	input[type=reset]:hover
	{
	background-color: coral;
		color: snow;
		transition: 0.3s;	
	}
	
</style>
</head>
<body background="i/locker.jpg">
<center>
<div class="banner">
<img src="banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
</center>
<div class="topbar">
  <a href="home.html">Home</a>
  <a href="savtnc.html">Online Saving Account Opening</a>
  <a href="Register.jsp">Register for Internet Banking</a>
  <a href="about.html">About</a>
</div>
<br><br><br>
<div class="lockerform">
<form action="LockServlet" method="post">
   <br><h2 class="formheading">&nbsp;&nbsp;&nbsp; Locker Registration</h2>
    <hr>
    <table cellspacing="10px" width="800px">
    <tr>
        <th>Visitor Type&#42;:</th><th><input type="radio" onClick="return acnt();" name="lo1" id="r1" value="Customer">Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" onClick="return acnt();" name="lo1" id="r2" value="Non-Customer">Non-Customer</th>
    </tr>
    <tr id="acc1" style="display: none">
		<th>Account No.:</th><th><input style="width: 95%;" type="text" name="lo2"></th>
    </tr>
    <tr>
    <th>Name:</th><th><input type="text" name="lo3"></th>
    </tr>
    <tr>
    <th>Address:</th><th><input type="text" name="lo4"></th>
    </tr>
    <tr>
    <th>Locker Type:</th><th><select name="lo5" style="width: 100%;font-size: 20px;font-family:Arial Rounded MT;padding:12px 10px;">
        <option value="0">Select Locker Size--</option>
        <option value="Small">Small</option>
        <option value="Medium">Medium</option>
        <option value="Large">Large</option>
        </select> 
        </th>
    </tr>
    <tr>
    <th>Mobile No.:</th><th><input style="width: 10%" type="text" placeholder="+91" readonly><input style="width: 77%;" type="text" name="lo6"></th>
    </tr>
    <tr>
    <th>Email-Id:</th><th><input type="email" style="width: 95%;font-size: 20px;font-family:Arial Rounded MT;padding:12px 10px;" name="lo7"></th>
    </tr>
		<tr><td colspan="2">
			By clicking on "SAVE" you will accept our <p>Terms and Conditions</p></td></tr>
        <tr><th colspan="2" style="100%"><input type="submit" value="SAVE">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="CANCEL"></th>
    </tr>

    </table>
    </form>
    </div>
</body>
</html>