<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
	*{
		box-sizing: border-box;
	}
	h2{
		font-family: Engravers MT;
		font-size: 30px;
		color: darkcyan;
	}
	h3{
	font-family: Bernard MT;
	}
	hr{
		color: firebrick;
	}
	#form1{
		width:80%;
		margin: 50px auto;
		background-color: pink;
		border: 3px groove violet;
		border-radius:8px;
		box-shadow: 8px;
	}
	#rd:focus{
		background-color: gold;
		border: 2px solid red;
		transition: 0.5s;
		padding: 20px 30px;
		transition: 0.5s;
	}
	.scroll{
		display: none;
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
	#next,#prev{
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
	#next:hover{
	background-color: lawngreen;
		color:ivory;
		box-shadow: 0px 4px 4px 0px rgba(0,0,0,0.4);
	}
	#prev:hover{
		background-color: deeppink;
		color:white;
		box-shadow: 0px 4px 4px 0px rgba(0,0,0,0.4);
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
</style>
<meta charset="ISO-8859-1">
<title>Housing Loan</title>
</head>
<body background="i/back.jpg">
<center>
<header>
<div class="banner">
<img src="i/banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
	</header>
	<br>

<form id="form1" action="HomeServlet" method="post">
	<h2 >Housing Loan</h2>
	<hr>
	<div class="scroll">
	<table cols="4" width="100%" cellspacing="8">
	<tr bgcolor="aqua">
		<th colspan=4><h3>GENERAL INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
	<TR>
		<th style="width:25%">TITLE:</th>
		
				<td style="width:25%">
				<select name="h1" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
					<option value="0">----Select one----</option>
						<option value="1">Mr.</option>
					<option value="1">Mrs.</option>
						<option value="1">Miss.</option>
						<option value="1">Dr.</option>
						<option value="1">others</option>
					</select></td>
		<th style="width:25%">NAME*:</th>
		
				<td style="width:25%">
					<input class="design" type="text" name="h2" required></td>
		</TR>
				
				<tr>
					<th style="width:25%">GENDER:</th>
					<td style="width:25%"><input type="radio" name="h3">MALE<input type="radio" name="h3">FEMALE<input type="radio" name="h3">OTHERS</td>
					<th style="width:25%">AADHAR CARD NO.(UID)*:</th>
		
					<td style="width:25%"><input class="design" type="text" maxlength="12" name="h4" required></td>
                    <TR>
                    <Th STYLE="width: 25%">DATE OF BIRTH: </Th>
						<td style="width: 25%"><input class="design" type="date" name="h5" required></td>
						<th STYLE="width: 25%">PAN CARD NO.*:</th>
                        <td style="width: 25%"><input type="text" class="design" maxlength="10" name="h6" required></td>
                    </TR>
        <tr>
                <th style="width: 25%" rowspan="2">ADDRESS:</th>
                <Td style="width: 25%" rowspan="2"><textarea class="design" rows="2" cols="38" name="h7"></textarea> </Td>
                <th style="width: 25%">VOTER'S ID CARD NO.:</th>
			<td style="width: 25%"><input type="text" class="design" maxlength="10" name="h8" required></td>
                    </tr>
        <tr>
            <th style="width:25%">PHONE NO.:</th>
            <td style="width: 25%">
                <input type="text" style="width:22%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="con1" placeholder="+91" readonly>
                <input type="text" style="width:70%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="h9" id="rd" required></td>
                    </tr>
        <tr>
                <Th STYLE="width: 25%">MARTIAL STATUS: </Th>
			<td style="width: 25%"><select name="h10" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">SINGLE</option>
				<option value="1">MARRIED</option>
				</select> </td>
			<th STYLE="width: 25%">E-MAIL ID:</th>
                        <td style="width: 25%"><input type="email" class="design" name="h11"></td>  
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
			<th style="width: 25%">DO YOU WANT A JOINT APPLICANT?</th>
			<th style="width: 25%"><input type="radio" id="r1" name="ch" checked>YES &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="r2" name="ch">NO</th>
                    </table>
	
	</div>
	<div class="scroll">
	<table cols="4" width="100%" cellspacing="8">
		<tr bgcolor="aqua">
		<th colspan=4><h3>JOINT-APPLICANT INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
	<TR>
		<th style="width:25%">TITLE:</th>
		
				<td style="width:25%">
				<select name="h12" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
						<option value="0">----Select one----
						<option value="1">Mr.</option>
						<option value="1">Mrs.</option>
						<option value="1">Miss.</option>
						<option value="1">Dr.</option>
						<option value="1">others</option>
					</select></td>
		<th style="width:25%">NAME*:</th>
		
				<td style="width:25%">
					<input class="design" type="text" name="h13" required></td>
		</TR>
				
				<tr>
					<th style="width:25%">GENDER:</th>
					<td style="width:25%"><input type="radio" name="h14">MALE<input type="radio" name="a3">FEMALE<input type="radio" name="a3">OTHERS</td>
					<th style="width:25%">AADHAR CARD NO.(UID)*:</th>
		
					<td style="width:25%"><input class="design" type="text" maxlength="12" name="h15" required></td>
                    <TR>
                    <Th STYLE="width: 25%">DATE OF BIRTH: </Th>
						<td style="width: 25%"><input class="design" type="date" name="h16" required></td>
						<th STYLE="width: 25%">PAN CARD NO.*:</th>
                        <td style="width: 25%"><input type="text" class="design" maxlength="10" name="h17" required></td>
                    </TR>
        <tr>
                <th style="width: 25%" rowspan="2">ADDRESS:</th>
                <Td style="width: 25%" rowspan="2"><textarea class="design" rows="2" cols="38" name="h18"></textarea> </Td>
                <th style="width: 25%">VOTER'S ID CARD NO.:</th>
			<td style="width: 25%"><input type="text" class="design" maxlength="10" name="h19" required></td>
                    </tr>
        <tr>
            <th style="width:25%">PHONE NO.:</th>
            <td style="width: 25%">
                <input type="text" style="width:22%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="con1" placeholder="+91" readonly>
                <input type="text" style="width:70%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="h20" id="rd" required></td>
                    </tr>
        <tr>
                <Th STYLE="width: 25%">MARTIAL STATUS: </Th>
			<td style="width: 25%"><select name="h21" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Arial Rounded MT;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">SINGLE</option>
				<option value="1">MARRIED</option>
				</select> </td>
			<th STYLE="width: 25%">E-MAIL ID:</th>
                        <td style="width: 25%"><input type="email" class="design" name="h22"></td>  
                    </tr>
        
                    
                    </table>
		
	</div>
		<div class="scroll">
		<table cols="3" width="100%" cellspacing="8">
		<tr bgcolor="aqua">
		<th colspan=3><h3>BANK DETAILS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
		<tr>
		<th style="width: 33%"></th>
		<th style="width: 33%">APPLICANT</th>
			<th style="width: 33%">JOINT-APPLICANT</th>
		</tr>
		<tr>
		    <th style="width: 33%">NAME OF THE BANK/BRANCH:</th>
			<th style="width: 33%"><input type="text" class="design" name="h23"></th>
			<th style="width: 33%"><input type="text" class="design" name="h24"></th>
			</tr>
			<tr>
			<th style="width: 33%">ACCOUNT NO.:</th>
			<th style="width: 33%"><input type="text" class="design" name="h25"></th>
			<th style="width: 33%"><input type="text" class="design" name="h26"></th>
			</tr>
			<tr>
			<th style="width: 33%">SINCE WHEN:</th>
			<th style="width: 33%"><input type="text" class="design" name="h27" placeholder="No. of years"></th>
			<th style="width: 33%"><input type="text" class="design" name="h28" placeholder="No. of years"></th>
			</tr>
			</table>
		</div>
		<div class="scroll">
		<table cols="2" cellspaing="8" width="100%">
			<tr bgcolor="aqua">
		<th colspan="2"><h3>LOAN GENERAL INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
		
			<tr>
			<th style="width: 50%;" rowspan="2">ADDRESS OF PLOT/FLAT/HOUSE: </th>
                <td style="width: 50%" rowspan="2"><textarea class="design" rows="2" cols="38" name="h29"></textarea> </td>
				</tr>
			<tr>
			</tr>
			<tr>
			<th style="width: 50%;" rowspan="2">NAME AND ADDRESS OF SELLER/BUILDER/HOUSING SOCIETY: </th>
                <td style="width: 50%" rowspan="2"><textarea class="design" rows="2" cols="38" name="h30" placeholder="name and address should be separated by ';'"></textarea> </td>
				</tr>
			<tr>
			</tr>
			<tr>
			<th style="width: 50%">AREA OF HOUSE/PLOT/FLAT: </th>
			<th style="width: 50%"><input class="design" name="h31" type="text"></th>
			</tr>
			<tr>
			<th style="width: 50%">AGE OF FLAT/HOUSE IN CASE OF PURCHASE: </th>
			<th style="width: 50%"><input class="design" name="h32" type="text" placeholder="No. of Years..."></th>
			</tr>
			</table>
	</div>
	<div class="scroll">
			<table cols="2" cellspacing="8px" width="100%">
				<tr bgcolor="aqua">
		<th colspan="2"><h3>LOAN DETAILS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
		
				</tr>
			<tr>
				<th style="width: 50%">ESTIMATE OF USES OF FUNDS:</th>
				<th style="width: 50%"><input type="text" class="design" name="h33" placeholder="Enter in Rupees...."></th>
				</tr>
				<tr>
				<th style="width: 50%">LOAN REQUESTED:</th>
				<th style="width: 50%"><input type="text" class="design" name="h34" placeholder="Enter in Rupees...."></th>
				</tr>
				<tr>
				<th style="width: 50%">OTHER SOURCES OF FUNDS:</th>
				<th style="width: 50%"><input type="text" class="design" name="h35" placeholder="Enter in Rupees...."></th>
				</tr>
				<tr>
					<td colspan="2"><p>By clicking the "APPLY FOR LOAN" button you will accept our <a href="loantnc.html" target="_blank" id="abc">Terms and Conditions</a>.</p></td>
				</tr>
			</table>
		</div>
		<div style="overflow: auto;">
			<div style="text-align: right;">
				<br><br>
		<button id="prev" onclick="change(-1)" type="button">PREVIOUS</button>
		<button id="next" onclick="change(1)" type="button">NEXT</button>
			<br><br><br>
		</div>
	</div>
	</form>
<script>
var a=0;
show(a);
function show(n)
	{
	var t=document.getElementsByClassName("scroll");
		t[n].style.display="block";
			
		if(n==0)
			{
				document.getElementById("prev").style.display="none";
			}
		else{
			document.getElementById("prev").style.display="inline";
		}
		
		if(n==(t.length-1)){
			document.getElementById("next").innerHTML="APPLY FOR LOAN";
		}
		else{
			document.getElementById("next").innerHTML="NEXT";
		}
	}
function change(n)
		{
			var t=document.getElementsByClassName("scroll");
			t[a].style.display="none";
			a=a+n;
			if(a>=t.length)
				{
				document.getElementById("form1").submit();
					return false;
				}
			if(document.getElementById("r2").checked)
				{
					if(a==1)
						{
							if(document.getElementById("next").onclick)
								{
							     a=2;
								}
							else if(document.getElementById("prev").onclick)
								{
									a=1;
								}
									
							}
				}
			show(a);
				}
	
	
</script>
</center>
</body>
</html>