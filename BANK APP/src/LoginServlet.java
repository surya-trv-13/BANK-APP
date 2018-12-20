

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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    static String uname;  
     
    public LoginServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		//response.setContentType("text/html");
		uname=request.getParameter("t1");
		String pass=request.getParameter("p1");
		LoginBean ll=new LoginBean();
		ll.setUname(uname);
		ll.setPass(pass);
		boolean b=false;
		try {
			b=ll.validate();
		}catch(Exception ee)
		{
			ee.printStackTrace();
		}
		if(b)
		{	Connection cn=null;
		PreparedStatement ps=null,p=null;
		try {
			cn=DBmanager.getConnection();
			ps=cn.prepareStatement("select * from accounts,inbank where accounts.acno=inbank.acno and uname=(?)");
			ps.setString(1,uname);
			p=cn.prepareStatement("select * from saving,inbank where saving.acno=inbank.acno and uname=(?)");
			p.setString(1, uname);
			ResultSet rs=ps.executeQuery();
			ResultSet r=p.executeQuery();
			if(rs.next() && r.next()) {
				pw.println( 
						"<div class=\"banner\">\r\n" + 
						"<img src=\"i/banklogo.jpg\" align=\"left\">\r\n" + 
						"<h1 class=\"formheading1\">TRV-13 BANK PVT. LTD.</h1>\r\n" + 
						"<h5 class=\"formheading2\">we promise your happiness...</h5>\r\n" + 
						"</div>\r\n"  
						);
				pw.println("<div id='bal'><center>");
				pw.println("<h3 id='welc'>WELCOME "+r.getString("name")+"</h3>");
				pw.println("<h3 id='welc1'>ACCOUNT NO.: "+r.getLong("acno")+"</h3>");
				pw.println("<h2 id='text'>YOUR ACCOUNT BALANCE IS:</h2>");
				pw.println("<h2 id='text2'>Rs."+rs.getFloat("bal")+"/-</h2>");
				pw.println("<p>FOR ANY QUERY CONTACT US THROUGH OUR HELPDESK<BR>OR VISIT YOUR NEAREST BRANCH<BR>WE PROVIDE YOU THE BEST IN CLASS SERVICES <BR>WE ARE AVAILABLE 24x7 <BR> ASK YOUR QUERY WITHOUT FEAR");
				pw.println("<h2 id='text1'>#HAPPYBANKING</h2></div>");
		RequestDispatcher rd=request.getRequestDispatcher("/balance.html");
		rd.include(request, response);
			}else {
				pw.println("<h1>NO OUTPUT AVAILABLE");
				RequestDispatcher rd=request.getRequestDispatcher("/balance.html");
				rd.include(request, response);
			}
			ps.close();
			cn.close();
		}catch(Exception ae) {
			ae.printStackTrace();}
			}
		else {
			pw.println("<h2>Invalid UserName or Password..</h2>");
			RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
			rd.include(request, response);
			
		}
		
			
	}
	
	
}
