<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	*{box-sizing: border-box;}
h2{
		font-family: Engravers MT;
		font-size: 30px;
		color: darkcyan;
	}
	h3{
	font-family: Bernard MT;
	}
#form1{
		width:80%;
		margin: 50px auto;
		background-color: pink;
		border: 3px groove violet;
		border-radius:8px;
		box-shadow: 8px;
	}
.design
{
width:95%;
padding:7px;
border-radius:8px;
font-size:20px;
font-family: Arial Rounded MT;
}
	.design:focus{
		background-color: gold;
		border: 2px solid red;
		transition: 0.5s;
		padding: 20px 30px;
	}
#abc{
		font-family: Arial Rounded MT;
		text-decoration: none;
		color:blue;
	}
	#abc:hover{
		color:yellow
	}
	p{
		font-family: Arial Rounded MT;
	}
#rd:focus{
		background-color: gold;
		border: 2px solid red;
		transition: 0.5s;
		padding: 20px 30px;
		transition: 0.5s;
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
height:35%;
overflow:hidden;
border:solid;
background-color:Blue;
}
button{
		height: 53px;
		width: auto;
		font-size:20px;
		font-family:Carlito;
		background-color: white;
		border: 2px solid;
		border-color: greenyellow;
		margin-right: 30px;
		border-radius: 5px;
		
	}
	button:hover{
	background-color: lawngreen;
		color:ivory;
		box-shadow: 0px 4px 4px 0px rgba(0,0,0,0.4);
	}
</style>
<meta charset="ISO-8859-1">
<title>Personal Loan</title>
</head>
<body background="i/backper.jpg">
<center>
<header>
<div class="banner">
<img src="i/banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
</header>
<img src="i/person.jpg" style="width: 100%;">
<form id="form1" action="PerServlet" method="post">
	<h2 >Personal Loan</h2>
	<hr>
	<div>
	<table cols="4" width="100%" cellspacing="8">
	<tr bgcolor="aqua">
		<th colspan=4><h3>GENERAL INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
	<TR>
		<th style="width:25%">TITLE:</th>
		
				<td style="width:25%">
				<select name="p1" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
					<option value="0">----Select one----</option>
						<option value="1">Mr.</option>
					<option value="1">Mrs.</option>
						<option value="1">Miss.</option>
						<option value="1">Dr.</option>
						<option value="1">others</option>
					</select></td>
		<th style="width:25%">NAME*:</th>
		
				<td style="width:25%">
					<input class="design" type="text" name="p2" required></td>
		</TR>
				
				<tr>
					<th style="width:25%">GENDER:</th>
					<td style="width:25%"><input type="radio" name="p3">MALE<input type="radio" name="h3">FEMALE<input type="radio" name="h3">OTHERS</td>
					<th style="width:25%">AADHAR CARD NO.(UID)*:</th>
		
					<td style="width:25%"><input class="design" type="text" maxlength="12" name="p4" required></td>
                    <TR>
                    <Th STYLE="width: 25%">DATE OF BIRTH: </Th>
						<td style="width: 25%"><input class="design" type="date" name="p5" required></td>
						<th STYLE="width: 25%">PAN CARD NO.*:</th>
                        <td style="width: 25%"><input type="text" class="design" maxlength="10" name="p6" required></td>
                    </TR>
        <tr>
                <th style="width: 25%" rowspan="2">ADDRESS:</th>
                <Td style="width: 25%" rowspan="2"><textarea class="design" rows="2" cols="38" name="p7"></textarea> </Td>
                <th style="width: 25%">VOTER'S ID CARD NO.:</th>
			<td style="width: 25%"><input type="text" class="design" maxlength="10" name="p8" required></td>
                    </tr>
        <tr>
            <th style="width:25%">PHONE NO.:</th>
            <td style="width: 25%">
                <input type="text" style="width:22%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="con1" placeholder="+91" readonly>
                <input type="text" style="width:70%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="p9" id="rd" required></td>
                    </tr>
        <tr>
                <Th STYLE="width: 25%">MARTIAL STATUS: </Th>
			<td style="width: 25%"><select name="p10" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">SINGLE</option>
				<option value="1">MARRIED</option>
				</select> </td>
			<th STYLE="width: 25%">E-MAIL ID:</th>
                        <td style="width: 25%"><input type="email" class="design" name="p11"></td>  
                    </tr>
		<tr>
			<th style="width: 25%">YOU BELONG TO:</th>
			<th style="width: 25%"><select style="width: 100%;padding: 7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">GENERAL</option>
				<option value="1">SC</option>
				<option value="1">ST</option>
				<option value="1">OBC</option>
				<option value="1">MINORITY</option></select> </th>
			<th style="width: 25%">ACCOUNT NO.:</th>
			<td style="width:25%"><input class="design" type="text" name="p12" required></td>
		</tr>
		
      </table>
	
	</div>
	<div>
			<table cols="2" cellspacing="8px" width="100%">
				<tr bgcolor="aqua">
		<th colspan="2"><h3>LOAN DETAILS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
		
				</tr>
			<tr>
				<th style="width: 50%">PURPOSE OF LOAN:</th>
				<th style="width: 50%"><input type="text" class="design" name="p13"></th>
				</tr>
				<tr>
				<th style="width: 50%">LOAN REQUIRED:</th>
				<th style="width: 50%"><input type="text" class="design" name="p14" placeholder="Enter in Rupees...."></th>
				</tr>
				<tr>
				<th style="width: 50%">REPAYMENT PERIOD:</th>
				<th style="width: 50%"><input type="text" class="design" name="p15" placeholder="Enter in Years...."></th>
				</tr>
				<tr>
				<th style="width: 50%">MONTHLY INSTALLMENT:</th>
				<th style="width: 50%"><input type="text" class="design" name="p16" placeholder="Enter in Rupees...."></th>
				</tr>

				<tr>
					<td colspan="2"><p>By clicking the "APPLY FOR LOAN" button you will accept our <a href="loantnc.html" target="_blank" id="abc">Terms and Conditions</a>.</p></td>
				</tr>
			</table>
		</div>
	<div>
	<button type="submit">APPLY FOR LOAN</button>
	<button type="RESET">CLEAN</button>
	</div>
	<br><br>
	</form>
</center>

</body>
</html>