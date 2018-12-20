

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegiServlet")
public class RegiServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("uname");
		String pass=request.getParameter("upass");
		String mob=request.getParameter("umob");
		String email=request.getParameter("uem");
		Long acno=Long.parseLong(request.getParameter("uacc"));
		RegisBean rb=new RegisBean();
		rb.setUname(name);
		rb.setMob(mob);
		rb.setEm(email);
		rb.setPass(pass);
		rb.setAcno(acno);
		boolean b=false;
		try {
			b=rb.validate();
		}catch(Exception ee)
		{
			ee.printStackTrace();
		}
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
		}else {
			pw.println("<h2 id='ena'>The Account Number you entered could not found in our database...<br>Please check and try again...</h2>");
			RequestDispatcher rd=request.getRequestDispatcher("/Register.jsp");
			rd.include(request, response);
		}
		}
		
	}
	


