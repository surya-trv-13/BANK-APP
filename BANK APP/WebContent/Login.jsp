<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>
    <script>
	function open1()
	{
		document.getElementById("sideopn").style.width="450px";
		document.getElementById("full").style.marginLeft="450px";
		document.body.style.backgroundColor="rgba(0,0,0,0.2)";
	}
 function close1()
	{
	document.getElementById("sideopn").style.width="0px";
	document.getElementById("full").style.marginLeft="0px";
	document.body.style.backgroundColor="white"	;
	}
    function show()
        {
            var a=document.getElementById("sb");
            if(a.type=="password")
                {
                    a.type="text";
                }else{
                    a.type="password";
                }
        }
    </script>
<style>
*{box-sizing: border-box;}
#sideopn{
		height: 100%;
		left:0px;
		top:0%;
		overflow-x: hidden;
		position: fixed;
		padding-top: 20px;
		width: 0px;
		transition: 0.5s;
		background-color:darksalmon;
		border-right: 4px ridge blue;
	}
	#sideopn a{
	padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: gray;
    display: block;
    transition: 0.3s;
	}
	#sideopn a:hover{
		color: white;
	}
	#sideopn .clsbtn{
	position: absolute;
    top: 0;
    right: 25px;
    font-size: 56px;
    font-weight: bolder;
	}
	#sideopn .clsbtn:hover{
		color: red;
	}
	#full{
		transition: margin-left 0.5s;
	}
	#optn{
		font-size: 60px;
		cursor: pointer;
		color: azure;
		background-color: darkgoldenrod;
		border-radius: 5px;
		width: 45px;
		display: inline;
		top: 0px;
	}
h2{
color:red;
font-family:Arial Rounded MT;}
.loginform{  
    padding:10px;  
    border:2px solid brown;  
    border-radius:10px;  
    width:500px;
    top:25px;
    background-color: grey;
    opacity: 0.8;
}  
.formheading{  
    font-size: 30px; 
    color:floralwhite;  
    padding:9px;  
    text-align:center;  
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
.sub{ 
background-color: white;
padding: 7px 40px 7px 40px;  
color:black;  
font-weight:bold;    
border-radius:5px;
border: 2px solid green;
cursor:pointer;

}
    .sub:hover{
        background-color: lightgreen;
        
    }
.banner
{
margin:0px;
padding:0;
height:184px;
width:100%;
overflow:hidden;
border:solid;
background-color:Blue;
} 
    input[type=text]:focus{
        padding: 12px 20px;
        width: 100%;
        box-sizing:border-box;
        border: 3px solid orange;
        background-color: indianred;
        transition: 0.5s;
        outline: none;
    }   
    input[type=password]:focus{
        padding: 12px 20px;
        width: 100%;
        box-sizing: border-box;
    border: 3px solid orange;
        background-color: indianred;
    transition: 0.5s;
    }   
</style>
</head>
<body background="loginback.jpg"> 
<!--______________________________________________________________________________________________________________-->	
<div id="sideopn">
	<a href="#" class="clsbtn" onclick="close1()">&times;</a>
	<img src="i/banklogo.jpg" width="140px" height="120px" style="padding-left: 20px;"/>
	<br><br><br>
	<a href="home.html">Home</a>
	<a href="about.html">About</a>
	<a href="savtnc.html">Online Saving Accout Opening</a>
	<a href="help.html">Help</a>
	<a href="faq.html">F A Q</a>
	</div>
<!--______________________________________________________________________________________________________________-->	
<div id="full">
<div class="banner">
<img src="banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
<span id="optn" onclick="open1()">&nbsp;&#10095;&nbsp;</span>
<center>
<div class="loginform">
  
<h3 class="formheading">----Login----</h3>  
<form action="LoginServlet" method="post">
    <hr>
    

<table cellspacing="2" width="500px"> 
    
    <tr>
        <th style="width: 40%;color: cornsilk">USERNAME:</th>
        <th style="width: 50%"><input style="border-radius: 50px;width: 100%" type="text" name="t1" autocomplete="off"/></th>
    </tr>  
    <tr>
        <th style="width: 40%;color: cornsilk">PASSWORD:</th>
        <th style="width: 50%"><input style="border-radius: 50px;width: 100%" type="password" name="p1" id="sb"/></th>
        <td style="width: 10%"><input type="checkbox" id="ena" onclick="return show();"/></td>
    </tr>   
    <tr>
        
        <th colspan="3" style="text-align: center"><input  class="sub" type="submit" value="login"/><input class="sub" type="reset" value="Reset"/></th>
    </tr>
    <tr>
        <th colspan="3" style="text-align:center"><br><br><br>Not have an Account?</th>
    <tr>
    <tr>
        <th colspan="3" style="text-align:center"><a href="Register.jsp"><button type="button" class="sub">Create an Account</button></a></th>
    </tr>
</table>  
</form>
</div>
</center>
	</div>
</body>
</html>  
