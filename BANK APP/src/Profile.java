

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


@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Profile() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		Connection cn=null;
		PreparedStatement ps=null;
		String uname=LoginServlet.uname;
		try {
			cn=DBmanager.getConnection();
			ps=cn.prepareStatement("select * from saving,inbank where inbank.acno=saving.acno and uname=(?)");
			ps.setString(1, uname);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
		out.println("<center>\r\n" + 
				"<div class=\"banner\">\r\n" + 
				"<img src=\"i/banklogo.jpg\" align=\"left\">\r\n" + 
				"<h1 class=\"formheading1\">TRV-13 BANK PVT. LTD.</h1>\r\n" + 
				"<h5 class=\"formheading2\">we promise your happiness...</h5>\r\n" + 
				"</div>\r\n" + 
				"</center>");
		out.println("<div id='bal'>");
		out.println("<table cols='2' cellspacing='8' style='width:100%;'>");
		out.println("<tr><th style='width:50%'>ACCOUNT NO.:<th><th style='width:50%'>"+rs.getLong("acno")+"</th></tr>");
		out.println("<tr><th style='width:50%'>NAME:<th><th style='width:50%'>"+rs.getString("name")+"</th></tr>");
		out.println("<tr><th style='width:50%'>FATHER'S NAME:<th><th style='width:50%'>"+rs.getString("fname")+"</th></tr>");
		out.println("<tr><th style='width:50%'>MOTHER'S NAME:<th><th style='width:50%'>"+rs.getString("mname")+"</th></tr>");
		out.println("<tr><th style='width:50%'>ADDRESS:<th><th style='width:50%'>"+rs.getString("address")+"</th></tr>");
		out.println("<tr><th style='width:50%'>	AADHAR NUMBER:<th><th style='width:50%'>"+rs.getString("ADHAR")+"</th></tr>");
		out.println("<tr><th style='width:50%'>	MOBILE NUMBER:<th><th style='width:50%'>"+rs.getString("mob")+"</th></tr>");
		out.println("<tr><th style='width:50%'>	EMAIL-ID:<th><th style='width:50%'>"+rs.getString("email")+"</th></tr>");
		out.println("<tr><th style='width:50%'>	NOMINEE NAME:<th><th style='width:50%'>"+rs.getString("noname")+"</th></tr>");
		out.println("<tr><th style='width:50%'>	MAJORITY/MINORITY:<th><th style='width:50%'>"+rs.getString("COMM")+"</th></tr>");
		out.println("</div>");
		RequestDispatcher rd=request.getRequestDispatcher("/balance.html");
		rd.include(request, response);
			}else {
				out.println("<h1>NO OUTPUT AVAILABLE");
				RequestDispatcher rd=request.getRequestDispatcher("/balance.html");
				rd.include(request, response);
			}
			cn.close();
			ps.close();
		}catch(Exception ee) {ee.printStackTrace();}
	}

}
