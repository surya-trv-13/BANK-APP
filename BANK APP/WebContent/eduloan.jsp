<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.scroll{
		display: none;
	}
	*{
		box-sizing: border-box;
	}
	body{
		
		background-position: bottom;
		background-repeat: no-repeat;
		background-size: contain;
	
		
	}
#form1{
		width:80%;
		margin: 50px auto;
		margin-left: 140px;
		background-color: plum;
		border: 3px groove violet;
		border-radius:8px;
		box-shadow: 8px;
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
font-family: Comic Sans MS;
font-kerning: normal;
font-weight: bold;
color: orangered;
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
<title>Educational Loan</title>
</head>
<body background="i/frameedu.jpeg">
<center>
<div class="banner">
<img src="i/banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
<form id="form1" action="EduServlet" method="post">
<h2 style="font-family: Jokerman;font-size: 30px;color:dodgerblue;">EDUCATIONAL LOAN</h2>
	<hr>
	<div class="scroll">
	<table cols="4" width="100%" cellspacing="8">
	<tr bgcolor="ivory">
		<th colspan=4><h3>PERSONAL INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th></tr>
	<TR>
		<th style="width:25%">TITLE:</th>
		
				<td style="width:25%">
				<select name="e1" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
					<option value="0">----Select one----</option>
						<option value="1">Mr.</option>
					<option value="1">Mrs.</option>
						<option value="1">Miss.</option>
						<option value="1">Dr.</option>
						<option value="1">others</option>
					</select></td>
		
			<th style="width:25%">GENDER:</th>
					<td style="width:25%"><input type="radio" name="e2" VALUE="MALE">MALE<input type="radio" name="e2" value="FEMALE">FEMALE<input type="radio" name="e2" value="OTHERS">OTHERS</td>
		</TR>
				
				<tr>
					
					<th style="width:25%">NAME*:</th>
		
				<td style="width:25%">
					<input class="design" type="text" name="e3" required></td>
					<th style="width:25%">AADHAR CARD NO.(UID)*:</th>
		
					<td style="width:25%"><input class="design" type="text" maxlength="12" name="e4" required></td></tr>
				<tr>
					
					<th style="width:25%">FATHER'S NAME*:</th>
		
				<td style="width:25%">
					<input class="design" type="text" name="e5" required></td>
					<th style="width:25%">PAN NO.*:</th>
		
					<td style="width:25%"><input class="design" type="text" maxlength="10" name="e6" placeholder="if available"></td></tr>
					
                    <TR>
                    <Th STYLE="width: 25%">DATE OF BIRTH: </Th>
						<td style="width: 25%"><input class="design" type="date" name="e7" required></td>
						<th STYLE="width: 25%">BOARD IN 10TH*:</th>
                        <th style="width: 25%">
				<select name="e8" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">CBSE</option>
				<option value="1">ISC</option>
				<option value="1">OTHERS</option>
				</select>
				</th>
                    </TR>
        <tr>
                <th style="width: 25%" rowspan="2">ADDRESS:</th>
                <Td style="width: 25%" rowspan="2"><textarea class="design" rows="2" cols="38" name="e9"></textarea> </Td>
                <th style="width: 25%">PERCENTAGE IN 10TH.:</th>
			<td style="width: 25%"><input type="text" class="design" maxlength="10" name="e10" required></td>
                    </tr>
		<tr>
            <th style="width: 25%">BOARD IN 12TH:</th>
			<th style="width: 25%"><select name="e11" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">CBSE</option>
				<option value="1">ISC</option>
				<option value="1">OTHERS</option>
				</select>
				</th>
                    </tr>
		<tr>
		<th style="width:25%">PHONE NO.:</th>
            <td style="width: 25%">
                <input type="text" style="width:22%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" name="con1" placeholder="+91" readonly>
                <input type="text" style="width:70%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" name="e12" id="rd" required></td>
			<th style="width: 25%">PERCENTAGE IN 12TH.:</th>
			<td style="width: 25%"><input type="text" class="design" maxlength="10" name="e13" required></td>

		</tr>
        
        <tr>
                <Th STYLE="width: 25%">MARTIAL STATUS: </Th>
			<td style="width: 25%"><select name="e14" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">SINGLE</option>
				<option value="1">MARRIED</option>
				</select> </td>
			<th STYLE="width: 25%">E-MAIL ID:</th>
                        <td style="width: 25%"><input type="email" class="design" name="e15"></td>  
                    </tr>
		<tr>
			<th style="width: 25%">YOU BELONG TO:</th>
			<th style="width: 25%"><select style="width: 100%;padding: 7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd" name="e16">
				<option value="0">----Select one----</option>
				<option value="1">GENERAL</option>
				<option value="1">SC</option>
				<option value="1">ST</option>
				<option value="1">OBC</option>
				<option value="1">MINORITY</option></select> </th>
			<th style="width: 25%">SELECT YOUR JOINT APPLICANT:</th>
			<th style="width: 25%"><select name="e17" style="width: 100%;padding: 7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">FATHER</option>
				<option value="1">MOTHER</option>
				<option value="1">GUARDIAN</option>
				</select></th></tr>
		</table>
	</div>
		<div class="scroll">
	<table cols="4" width="100%" cellspacing="8">
		<tr bgcolor="aqua">
			<th colspan=4><h3>JOINT-APPLICANT INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th></tr>
	<TR>
		<th style="width:25%">TITLE:</th>
		
				<td style="width:25%">
				<select name="e18" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
						<option value="0">----Select one----
						<option value="1">Mr.</option>
						<option value="1">Mrs.</option>
						<option value="1">Miss.</option>
						<option value="1">Dr.</option>
						<option value="1">others</option>
					</select></td>
		<th style="width:25%">NAME*:</th>
		
				<td style="width:25%">
					<input class="design" type="text" name="e19" required></td>
		</TR>
				
				<tr>
					<th style="width:25%">GENDER:</th>
					<td style="width:25%"><input type="radio" name="e20">MALE<input type="radio" name="e20">FEMALE<input type="radio" name="e20">OTHERS</td>
					<th style="width:25%">AADHAR CARD NO.(UID)*:</th>
		
					<td style="width:25%"><input class="design" type="text" maxlength="12" name="e21" required></td>
		</tr>
                    <TR>
                    <Th STYLE="width: 25%">DATE OF BIRTH: </Th>
						<td style="width: 25%"><input class="design" type="date" name="e22" required></td>
						<th STYLE="width: 25%">PAN CARD NO.*:</th>
                        <td style="width: 25%"><input type="text" class="design" maxlength="10" name="e23" required></td>
                    </TR>
        <tr>
                <th style="width: 25%" rowspan="2">ADDRESS:</th>
                <Td style="width: 25%" rowspan="2"><textarea class="design" rows="2" cols="38" name="e24"></textarea> </Td>
                <th style="width: 25%">VOTER'S ID CARD NO.:</th>
			<td style="width: 25%"><input type="text" class="design" maxlength="10" name="e25" required></td>
                    </tr>
        <tr>
            <th style="width:25%">PHONE NO.:</th>
            <td style="width: 25%">
                <input type="text" style="width:22%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" name="con1" placeholder="+91" readonly>
                <input type="text" style="width:70%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" name="e26" id="rd" required></td>
                    </tr>
        <tr>
                <Th STYLE="width: 25%">MARTIAL STATUS: </Th>
			<td style="width: 25%"><select name="e27" style="width: 100%;padding:7px;border-radius: 8px;font-size: 20px;font-family: Comic Sans MS;color: orangered;" id="rd">
				<option value="0">----Select one----</option>
				<option value="1">SINGLE</option>
				<option value="1">MARRIED</option>
				</select> </td>
			<th STYLE="width: 25%">E-MAIL ID:</th>
                        <td style="width: 25%"><input type="email" class="design" name="e28"></td>  
                    </tr>
			</table>
		</div>
            <div class="scroll">
	<table cols="4" width="100%" cellspacing="8">
		<tr bgcolor="aqua">
			<th colspan=4><h3>BANK DETAILS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th></tr>
		<tr>
		<th style="width: 33%"></th>
		<th style="width: 33%">APPLICANT</th>
			<th style="width: 33%">JOINT-APPLICANT</th>
		</tr>
		<tr>
		    <th style="width: 33%">NAME OF THE BANK/BRANCH:</th>
			<th style="width: 33%"><input type="text" class="design" name="e29"></th>
			<th style="width: 33%"><input type="text" class="design" name="e30"></th>
			</tr>
			<tr>
			<th style="width: 33%">ACCOUNT NO.:</th>
			<th style="width: 33%"><input type="text" class="design" name="e31"></th>
			<th style="width: 33%"><input type="text" class="design" name="e32"></th>
			</tr>
			<tr>
			<th style="width: 33%">SINCE WHEN:</th>
			<th style="width: 33%"><input type="text" class="design" name="e33" placeholder="No. of years"></th>
			<th style="width: 33%"><input type="text" class="design" name="e34" placeholder="No. of years"></th>
			</tr>
            </table>
			</div>
            <div class="scroll">
		<table cols="4" cellspaing="8" width="100%">
			<tr bgcolor="aqua">
				<th colspan="4"><h3>COURSE DETAILS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th></tr> 
			<tr>
			<th colspan="2" style="width: 50%">DURATION OF THE COURSE:</th>
			<th colspan="2" style="width: 50%"><input type="number" min="1" max="6" class="design" name="e35"></th>
			</tr>
			<tr>
			<th colspan="2" style="width: 50%">NAME OF THE INSTITUTION:</th>
			<th colspan="2" style="width: 50%"><input type="text" class="design" name="e36"></th>
			</tr>
			<tr>
			<th colspan="2" style="width: 50%">NAME OF THE COURSE:</th>
			<th colspan="2" style="width: 50%"><input type="text" class="design" name="e37"></th>
			</tr>
			<tr>
			<th style="25%">DATE OF COMMENCEMENT:</th>
			<th style="25%"><input type="month" class="design" name="e38"></th>
			<th style="25%">DATE OF COMMENCEMENT:</th>
			<th style="25%"><input type="month" class="design" name="e39"></th>
			</tr>
			</table>
		</div>
			<div class="scroll">
		<table cols="2" cellspaing="8" width="100%">
			<tr bgcolor="aqua">
		<th colspan="2"><h3>LOAN GENERAL INFORMATIONS<BR>)<<<<<<<<0>>>>>>>>( </h3></h3></th>
			</tr>
			<tr>
			<th style="50%">TOTAL FEES OF WHOLE FULL COURSE:</th>
			<th style="50%"><input type="text" class="design" name="e40"></th>
			</tr>
			<tr>
			<th style="50%">OWN SOURCE/SCHOLARSHIPS:</th>
			<th style="50%"><input type="text" class="design" name="e41"></th>
			</tr>
			<tr>
			<th style="50%">LOAN REQUSTED:</th>
			<th style="50%"><input type="text" class="design" name="e42"></th>
			</tr>
			
			<tr><th style="width: 50%;color:saddlebrown;background-color: aqua"><strong><u>REPAYMENT PROPOSED:</u></strong></th></tr>
			
			
			<tr>
			<th style="50%">NO. OF INSTALLMENTS:</th>
			<th style="width: 50%"><input type="number" class="design" name="e43" placeholder="should be in 2 digits"></th>
			</tr>
			<tr>
			<th style="50%">AMOUNT (p.m.):</th>
			<th style="width: 50%"><input type="text" class="design" name="e44"></th>
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
			show(a);
				}
	
</script>
</center>
</body>
</html>