

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TranServlet")
public class TranServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TranServlet() {
        super();
       
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Long acno=Long.parseLong(request.getParameter("t1"));
		Float amt=Float.parseFloat(request.getParameter("t2"));
		TranBean tb=new TranBean();
		tb.setAcno(acno);
		tb.setAmt(amt);
		int x=0;
		try {
			x=tb.validiate();
		}catch(Exception ee) {
			ee.printStackTrace();
		}
		if(x==10)
		{Connection cn=null;
		PreparedStatement ps=null,p=null;
		String u=LoginServlet.uname;
		try {
		cn=DBmanager.getConnection();
		ps=cn.prepareStatement("select * from accounts,inbank where inbank.acno=accounts.acno and uname=(?)");
		ps.setString(1, u);
		p=cn.prepareStatement("select * from saving,inbank where saving.acno=inbank.acno and uname=(?)");
		p.setString(1, u);
		ResultSet rs=ps.executeQuery();
		ResultSet r=p.executeQuery();
		if(rs.next() && r.next()) {
		out.println("<center>\r\n" + 
				"<div class=\"banner\">\r\n" + 
				"<img src=\"i/banklogo.jpg\" align=\"left\">\r\n" + 
				"<h1 class=\"formheading1\">TRV-13 BANK PVT. LTD.</h1>\r\n" + 
				"<h5 class=\"formheading2\">we promise your happiness...</h5>\r\n" + 
				"</div>\r\n" + 
				"	</center>");
		out.println("<div id='bal'><center>");
		out.println("<h3 id='welc'>WELCOME "+r.getString("name")+"</h3>");
		out.println("<h3 id='welc1'>ACCOUNT NO.: "+r.getLong("acno")+"</h3>");
		out.println("<h2 id='text'>YOUR ACCOUNT BALANCE IS:</h2>");
		out.println("<h2 id='text2'>Rs."+rs.getFloat("bal")+"/-</h2>");
		out.println("<p>FOR ANY QUERY CONTACT US THROUGH OUR HELPDESK<BR>OR VISIT YOUR NEAREST BRANCH<BR>WE PROVIDE YOU THE BEST IN CLASS SERVICES <BR>WE ARE AVAILABLE 24x7 <BR> ASK YOUR QUERY WITHOUT FEAR");
		out.println("<h2 id='text1'>#HAPPYBANKING</h2>");
		RequestDispatcher rd=request.getRequestDispatcher("/balance.html");
		rd.include(request, response);
		}
		}catch(Exception ee) {ee.printStackTrace();}
		}
		else if(x==2) {
			out.println("<h2>Balance is Less</h2>");
			RequestDispatcher rd=request.getRequestDispatcher("/transaction.jsp");
			rd.include(request, response);
		}
		else if(x==1) {
			out.println("<h2>Your username is Invalid</h2>");
			RequestDispatcher rd=request.getRequestDispatcher("/transaction.jsp");
			rd.include(request, response);
		}
		else if(x==0) {
			out.println("<h2>Account you want to transfer couldn't found in our database</h2>");
		}
	}

}
