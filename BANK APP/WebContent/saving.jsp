<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<style>
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
.formheading3{  
    background-color:ORANGE;  
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
    input[type=submit]:hover{
        background-color: peru;
        color: white;
        font-size: 20px;
        transition: 0.5s;
    }
    input[type=reset]:hover{
        background-color: peru;
        color: white;
        font-size: 20px;
        transition: 0.5s;
    }

.design
{
width:95%;
border-radius:4px;
padding:7px;
font-size: 20px;
font-family:Arial Rounded MT;
}  
</style>
<title>online saving account</title>
</head>
<body>
<center>
<div class="banner">
<img src="banklogo.jpg" align="left">
<h1 class="formheading1">TRV-13 BANK PVT. LTD.</h1>
<h5 class="formheading2">we promise your happiness...</h5>
</div>
</center>
<form action="SavingServlet" method="post">
<h2 class="formheading3">*******ONLINE SAVING ACCOUNT OPENING*******</h2>
<h4 style="text-align: right" >*marks are compulsory</h4>	
		<Table bgcolor="cyan" width="100%" cols="4" cellspacing="4">
			<tr>
				<th style="width:25%">CUSTOMER TYPE*:
		
				<td style="width:25%">
					<select class="design" style="width: 100%" name="R">
					<option value="0">----Select one----
					<option value="1">010201:PERSONAL-PUBLIC TEACHER/LECTURES
					<option value="1">010218:PERSONAL-PUBLIC-STUDENT
					<option value="1">010203:PERSONAL-PUBLIC-OTHERS
					<option value="1">010213:PERSONAL-PUBLIC-PROFESIONALS & SELF-EMPLOYED
					</select>
				<th style="width:25%">CITY:
		
				<td style="width:25%">
					<input class="design" type="text" name="S">
			
			<tr>
				<th style="width:25%">AADHAAR NUMBER*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s1" required>

				<th style="width:25%">HOME-BRANCH:
		
				<td style="width:25%">
					<input class="design" type="text" name="s2">

			<tr>
				<th style="width:25%">TITLE:
		
				<td style="width:25%">
					<select name="s3" style="width: 100%" class="design" required>
						<option value="0">----Select one----
						<option value="Mr.">Mr.</option>
						<option value="Mrs.">Mrs.</option>
						<option value="Miss.">Miss.</option>
						<option value="Dr.">Dr.</option>
						<option value="">others</option>
					</select>

				<th style="width:25%">GENDER:
		
				<td style="width:25%">
					<select name="s4" style="width: 100%" class="design">
						<option value="0">----Select one----
						<option value="1">MALE
					
						<option value="2">FEMALE
					
						<option value="3">others
					</select>

			<tr>
				<th style="width:25%">FIRST NAME*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s5" required>

				<th style="width:25%">MARTIAL STATUS:
		
				<td style="width:25%">
					<select name="s6" style="width: 100%" class="design">
						<option value="0">----Select one----
					
						<option value="1">Single
					
						<option value="2">Married
					</select>

			<tr>
				<th style="width:25%">LAST NAME*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s7" required>

				<th style="width:25%">NATIONALITY*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s8" placeholder="INDIAN" disabled>

			<tr>
				<th style="width:25%">FATHER/SPOUSE NAME:
		
				<td style="width:25%">
					<input class="design" type="text" name="s9">

				<th style="width:25%">DATE OF BIRTH:
		
				<td style="width:25%">
					<input type="date" class="design" name="s10">

			<tr>
				<th style="width:25%">MOTHER'S MAIDEN NAME:
		
				<td style="width:25%">
					<input class="design" type="text" name="s11">

				<th style="width:25%">MOBILE NUMBER*:
		
				<td style="width:25%">
					<input type="text" style="width:11%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;"  name="con1" placeholder="+91" readonly><input type="text" style="width:77%;padding: 7px;border-radius: 4px;font-size: 20px;font-family: Arial Rounded MT;" name="s12" required>
			<tr>
				<th style="width:25%">HOUSE NO.*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s13">

				<th style="width:25%">E-MAIL ID:
		
				<td style="width:25%"><input class="design" type="email" name="s14">
			<tr>
				<th style="width:25%">LOCATION*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s15" required>

				<th style="width:25%">RESIDENTIAL STATUS:
				
				<td style="width:25%"><SELECT class="design" style="width: 100%" name="s16">
				    <option value="0">----Select one----
                    <option value="1">1:RI
				</SELECT>
			<tr>
				<th style="width:25%">LANDMARK:
		
				<td style="width:25%">
					<input class="design" type="text" name="s17">

				<th style="width:25%">ADDRESS PROOF*:
				
				<td style="width:25%"><input class="design" type="text"  placeholder="UID(AADHAR CARD NUMBER)" name="s18" readonly>	
			<tr>
				<th style="width:25%">DISTRICT:
		
				<td style="width:25%"><input class="design" type="text" name="s19">

				<th style="width:25%">ID TYPE*:
				
				<td style="width:25%">
                    <SELECT class="design" style="width: 100%" name="s20" required>
				<option value="0">----Select one----
				<OPTION VALUE="1">01:PASSPORT WITH SAME ADDRESS
				<OPTION VALUE="1">02:VOTER'S ID CARD
				<OPTION VALUE="1">03:GOVT./DEFENCE ID CARD
				<OPTION VALUE="1">04:DRIVING LICENSE
				<OPTION VALUE="1">05:UID
				<OPTION VALUE="1">PAN CARD
				</SELECT>				
			<tr>
				<th style="width:25%">STATE:
		
				<td style="width:25%">
					<SELECT class="design" style="width: 100%" name="s21">
					<option value="0">----Select one----
					<option value="1">Andhra Pradesh
					<option value="1">Arunachal Pradesh
					<option value="1">Assam 
					<option value="1">Bihar
					<option value="1">Chattisgarh
					<option value="1">Goa
					<option value="1">Gujrat
					<option value="1">Haryana
					<option value="1">Himachal Pradesh
					<option value="1">Jammu & Kashmir
					<option value="1">Karnataka
					<option value="1">Kerala
					<option value="1">Madhya Pradesh
					<option value="1">Maharastra
					<option value="1">Manipur
					<option value="1">Meghalaya
					<option value="1">Mizoram
					<option value="1">Nagaland
					<option value="1">Odisha
					<option value="1">Punjab
					<option value="1">Rajasthan 
					<option value="1">Sikkim
					<option value="1">Tamil Nadu
					<option value="1">Tripura
					<option value="1">Uttar Pradesh
					<option value="1">West Bengal
					<option value="1">Uttarakhand
					<option value="1">Jharkhand
					<option value="1">Telangana
					<option value="1">Delhi
					<option value="1">Andaman & Nicobar Island 
					<option value="1">Chandigarh
					<option value="1">Dadra & Nagar Haveli
					<option value="1">Daman & Diu
					<option value="1">Lakshadweep
					<option value="1">Puducherry
					</SELECT>
					
				<th style="width:25%">ID NUMBER:
				
				<td style="width:25%"><input class="design" type="text" name="s22">
			
			<TR>
				<th style="width:25%">COUNTRY:
		
				<td style="width:25%">
					<input class="design" type="text" name="s23">

				<th style="width:25%">SEGMENT CODE*:
				
				<td style="width:25%"><SELECT class="design" style="width: 100%" name="s24" required>
				<option value="0">----Select one----
				<option value="1">0101:PUBLIC INDIVIDUAL
				</SELECT>
			<TR>
			 	<th style="width:25%">PIN CODE*:
		
				<td style="width:25%">
					<input class="design" type="NUMBER" name="s25"></TR>
			
			<TR bgcolor="powderblue">
				<th COLSPAN=4><H3>-----NOMINATION DETAILS-----</H3></th>
			<TR>
				<th style="width:25%">TITLE:
		
				<td style="width:25%">
					<select name="s26" style="width: 100%" class="design">
						<option value="0">----Select one----
						<option value="Mr.">Mr.</option>
						<option value="Mrs.">Mrs.</option>
						<option value="Miss.">Miss.</option>
						<option value="Dr.">Dr.</option>
						<option value="">others</option>
					</select>
		
			<tr>
				<th style="width:25%">FIRST NAME*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s27" required>
				<th style="width:25%">LAST NAME*:
		
				<td style="width:25%">
					<input class="design" type="text" name="s28" required>		
				
			<tr>
				<th style="width:25%">MAJORITY/MINORITY:
				<td style="width:25%"><input type="radio" style="padding: 7px;font-family: Arial Rounded MT;font-size: 20px;" name="s29" value="Majority">Majority<input type="radio" style="padding: 7px;font-family: Arial Rounded MT;font-size: 20px;" name="s29" value="Minority">Minority			
			 	<th style="width:25%">RELATION:
			 	<td style="width:25%"><select name="s30" style="width: 100%" class="design">
			 	<option value="0">----Select one----
			 	<option value="FATHER">FATHER
			 	<option value="MOTHER">MOTHER
			 	<option value="1">GRANDFATHER
			 	<option value="1">GRANDMOTHER
			 	<option value="1">BROTHER
			 	<option value="1">SISTER
			 	<option value="1">BROTHER-IN-LAW
			 	<option value="1">SISTER-IN-LAW
			 	<option value="1">FATHER-IN-LAW
			 	<option value="1">MOTHER-IN-LAW
			 	<option value="1">SON
			 	<option value="1">DAUGHTER
			 	<option value="1">FRIEND
			 	<option value="1">SPOUSE
			 	<option value="1">UNCLE
			 	<option value="1">AUNTY
			 	<option value="1">OTHERS
			 	</select>
			<TR bgcolor="powderblue">
				<th COLSPAN=4><H3>-----DOCUMENT DETAILS-----</H3></th>		
			<tr>
				<th style="width:25%">YOUR PASSPORT SIZE PHOTO:
		
				<td style="width:25%">
					<input class="design" type="FILE" name="s31">
				<th style="width:25%">SIGNATURE:
		
				<td style="width:25%">
					<input class="design" type="FILE" name="s32">
				
			<TR>
			 <TD COLSPAN=4	ALIGN="CENTER">	<br><br><br><input TYPE="submit" style="border: 4px;border-style: groove;width: 120px;height: 60px;border-radius: 8px;" Value="SUBMIT">&nbsp;&nbsp;&nbsp;&nbsp;<input TYPE="reset" style="border: 4px;border-style: groove;width: 120px;height: 60px;border-radius: 8px;" value="CANCEL"><br><br><br>
		</Table>
</form>
</body>
</html>