<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#transac{
		margin-left:360px;
		padding:8px 10px;
		width:850px;
		margin-top: 20px;
		height:auto;
		min-height: 300px;
 		border:6px groove red;
		background-color:white;
		border-radius:8px;
	}
	#rest{
	font-family:Monotype Corsiva;
	font-size:35px;
	text-align:center;
	color:goldenrod;
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
	
	input[type=submit],input[type=reset]{
		width: 120px;
		height: 40px;
		color:black;
		background-color: white;
		border: 2px solid green;
		border-radius: 4px;
	}
	input[type=submit]:hover,input[type=reset]:hover{
		background-color: green;
		color: white;
		transition: 0.5s;
	}
.side {
    width: 330px;
    position: absolute;
    z-index: 1;
    margin-top:205px;
    left: 10px;
    background-color:linen;
    overflow-x: hidden;
    padding: 8px 0;
	border:3px groove indianred;
}

.side a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 25px;
	font-family: Cooper;
    color: gray;
    display: block;
}

.side a:hover {
    color: indianred;
}
	th{
		font-family:Arial Rounded MT;
		font-size:15px;
	}
.design
{
width:95%;
border-radius:4px;
padding:7px;
font-size: 20px;
font-family:Arial Rounded MT;
}  
	.design:focus{
		background-color: gold;
		border: 4px solid red;
		transition: 0.5s;
	}
</style>
<meta charset="ISO-8859-1">
<title>Internet Banking</title>
</head>
<body bgcolor="ivory">
	<div class="side">
	<a href="profile">PROFILE</a>
	<a href="transaction.jsp">TRANSACTION</a>
	<a href="balance">BALANCE</a>
	<a href="">HELP</a>
	<a href="">ABOUT</a>
	<a href="logout">LOGOUT</a>
	</div>
	<center>
<div class="banner">
<img src="i/banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
	</center>


	<div id="transac">
		<center><h1 id="rest">TRANSACTION</h1></center>
		<hr color="red">
		<form action="TranServlet" method="post">
		<table cols="2" cellspacing="10px" width="850px">
			<tr>
			<th style="width: 50%;height: 40px;">ACCOUNT NUMBER:</th>
			<th style="width: 50%;height: 40px;"><input type="text" name=t1 class="design" autocomplete="off"></th>
			</tr>
			<tr>
			<th style="width: 50%;height: 40px;">AMOUNT (IN RUPEES):</th>
			<th style="width: 50%;height: 40px;"><input type="text" name="t2" class="design"></th>
			</tr>
			<tr>
			<th colspan="2"><input type="submit" value="TRANSFER">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="CLEAR"></th>
			</tr>
			</table>
		</form>
	
		
</div>
</body>
</html>