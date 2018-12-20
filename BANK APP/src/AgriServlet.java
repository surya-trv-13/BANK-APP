

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


@WebServlet("/AgriServlet")
public class AgriServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AgriServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		java.sql.Date dob=null;
		String name=req.getParameter("a2");
		String gen=req.getParameter("a3");
		String adhar=req.getParameter("a4");
		String d=req.getParameter("a5");
		try {
			dob=convertDate.setDate(d);
		}catch(Exception ee) {
			ee.printStackTrace();
		}
		String pan=req.getParameter("a6");
		String add=req.getParameter("a7");
		String voter=req.getParameter("a8");
		String mob=req.getParameter("a9");
		String email=req.getParameter("a11");
		Long acno=Long.parseLong(req.getParameter("a40"));
		String aop=req.getParameter("a41");
		Float loan=Float.parseFloat(req.getParameter("a42")) ;
		Integer tenu=Integer.parseInt(req.getParameter("a43"));
		AgriBean aa=new AgriBean();
		aa.setAcno(acno);
		aa.setAdd(add);
		aa.setAdhar(adhar);
		aa.setAop(aop);
		aa.setDob(dob);
		aa.setEm(email);
		aa.setGen(gen);
		aa.setLoan(loan);
		aa.setMob(mob);
		aa.setName(name);
		aa.setPan(pan);
		aa.setTen(tenu);
		aa.setVote(voter);
		boolean b=false;
		try {
			b=aa.validiate();
		}catch(Exception ee) {ee.printStackTrace();}
		if(b)
		{
			Connection cn=null;
			PreparedStatement ps=null;
			try {
				cn=DBmanager.getConnection();
				ps=cn.prepareStatement("update accounts set bal=bal+(?) where acno=(?)");
				ps.setFloat(1, loan);
				ps.setFloat(2, acno);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					RequestDispatcher rd=req.getRequestDispatcher("/onlineb.html");
					rd.forward(req, res);
				}else {
					out.println("<h3>Account no. can't found in our database");
					RequestDispatcher rd=req.getRequestDispatcher("/agriloan.jsp");
					rd.include(req, res);
				}
			}catch(Exception ee) {ee.printStackTrace();}
		}else {
			out.println("<h3>Something happend from our side....<br> We're sorry for that<br> please try again..");
			RequestDispatcher rd=req.getRequestDispatcher("/agriloan.jsp");
			rd.include(req, res);
		}
	}

}
