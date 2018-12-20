

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LockServlet")
public class LockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LockServlet() {
        super();
        
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter();
	response.setContentType("text/html");
	String ctype=request.getParameter("lo1");
	Long acno=Long.parseLong(request.getParameter("lo2"));
	String name=request.getParameter("lo3");
	String add=request.getParameter("lo4");
	String ltype=request.getParameter("lo5");
	String mob=request.getParameter("lo6");
	String email=request.getParameter("lo7");
	//Locker NO.generation
	double r=Math.random();
	int lno=(int)(r*10000);
	LockBean lb=new LockBean();
	lb.setAcno(acno);
	lb.setAd(add);
	lb.setCtype(ctype);
	lb.setLtype(ltype);
	lb.setEm(email);
	lb.setMob(mob);
	lb.setName(name);
	lb.setLno(lno);
	boolean b=false;
	try {
		b=lb.validiate();
	}catch(Exception ee) {ee.printStackTrace();}
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
				+ "<h1 id='text'>Congratulations<br>You Booked a locker<BR>from our bank..."
				+"<h3 id='text2'>LOCKER NO.:"+lno+"</h3>"
				+"<p>PLEASE NOTE DOWN YOUR LOCKER NO. FOR FUTURE USE...<br>LOCKER BOOKING COST IS Rs.300/- ONLY <br>KINDLY PAY THE ABOVE AMOUNT IN YOUR NEAREST BRANCH WITHIN 48 WORKING HOURS<BR>FOR ANY QUERY CONTACT OUR HELPDESK<br>WE PROMISE YOUR SAFETY OF VALUEABLES</p>"
				+"<h2 id='text1'>#HAPPYBANKING</h2>");
		RequestDispatcher rd=request.getRequestDispatcher("/LockerN.html");
		rd.include(request, response);
	}
}

}
