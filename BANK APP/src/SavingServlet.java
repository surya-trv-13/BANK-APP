

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SavingServlet")
public class SavingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SavingServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		java.sql.Date dob=null;
		String ctype=request.getParameter("R");
		String city=request.getParameter("S");
		String adhar=request.getParameter("s1");
		String branch=request.getParameter("s2");
		String n1=request.getParameter("s3");
		String gen=request.getParameter("s4");
		String n2=request.getParameter("s5");
		String mstatus=request.getParameter("s6");
		String n3=request.getParameter("s7");
		String nation=request.getParameter("s8");
		String fname=request.getParameter("s9");
		String d=request.getParameter("s10");
		try {
			dob=convertDate.setDate(d);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String mname=request.getParameter("s11");
		String mob=request.getParameter("s12");
		String hno=request.getParameter("s13");
		String em=request.getParameter("s14");
		String loc=request.getParameter("s15");
		String rstatus=request.getParameter("s16");
		String land=request.getParameter("s17");
		String aproof=request.getParameter("s18");
		String dist=request.getParameter("s19");
		String idtype=request.getParameter("s20");
		String state=request.getParameter("s21");
		String id=request.getParameter("s22");
		String c=request.getParameter("s23");
		String pin=request.getParameter("s25");
		String non1=request.getParameter("s26");
		String non2=request.getParameter("s27");
		String non3=request.getParameter("s28");
		String comm=request.getParameter("s29");
		String rel=request.getParameter("s30");
		
		String name=n1+"."+n2+" "+n3;
		String add=hno+","+loc+","+land+","+dist+","+state+","+c+","+pin;
		String noname=non1+"."+non2+" "+non3;
		//Account Number Generation
		double r=Math.random();
		int part=(int)(r*10000);
		long acno=3280720000L+part;
		
		SaveBean ss=new SaveBean();
		ss.setAcno(acno);
		ss.setAddress(add);
		ss.setAdhar(adhar);
		ss.setAproof(aproof);
		ss.setBranch(branch);
		ss.setCity(city);
		ss.setComm(comm);
		ss.setCotype(ctype);
		ss.setDob(dob);
		ss.setEmail(em);
		ss.setFname(fname);
		ss.setId(id);
		ss.setIdtype(idtype);
		ss.setMname(mname);
		ss.setMobile(mob);
		ss.setMstatus(mstatus);
		ss.setName(name);
		ss.setNation(nation);
		ss.setNoname(noname);
		ss.setRel(rel);
		ss.setRstatus(rstatus);
		ss.setSex(gen);
		boolean b=false;
		try {
			b=ss.validiate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(b)
		{
		out.println("<center>\r\n" + 
				"<div class=\"banner\">\r\n" + 
				"<img src=\"i/banklogo.jpg\" align=\"left\">\r\n" + 
				"<h1 class=\"formheading1\">TRV-13 BANK PVT. LTD.</h1>\r\n" + 
				"<h5 class=\"formheading2\">we promise your happiness...</h5>\r\n" + 
				"</div>\r\n" + 
				"</center>");
		out.println("<div id='abc'><center>"
				+ "<h1 id='text'>CONGRATULATIONS<br>YOU CREATED AN ACCOUNT<BR>FROM OUR BANK..."
				+"<h3 id='text2'>Account No.:"+acno+"</h3>"
				+"<p>PLEASE NOTE DOWN YOUR ACCOUNT NO. FOR FUTURE USE...<br>INITIAL AMOUNT ADDED TO YOUR ACCOUNT IS Rs.5000/-<br>KINDLY PAY THE ABOVE AMOUNT IN YOUR NEAREST BRANCH WITHIN 48 WORKING HOURS<BR>FOR ANY QUERY CONTACT OUR HELPDESK<br></p>"
				+"<h2 id='text1'>#HAPPYBANKING</h2>");
		RequestDispatcher rd=request.getRequestDispatcher("/account.html");
		rd.include(request, response);
		}else {
			out.println("<h2>Something happend from our side</h2>");
			RequestDispatcher rd=request.getRequestDispatcher("/saving.jsp");
			rd.include(request, response);
		}
		
	}

}
