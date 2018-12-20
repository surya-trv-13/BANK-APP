

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


@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public HomeServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		java.sql.Date dob=null;
		String name=req.getParameter("h2");
		String gen=req.getParameter("h3");
		String adhar=req.getParameter("h4");
		String d=req.getParameter("h5");
		try {
			dob=convertDate.setDate(d);
		}catch(Exception ee) {
			ee.printStackTrace();
		}
		String pan=req.getParameter("h6");
		String add=req.getParameter("h7");
		String voter=req.getParameter("h8");
		String mob=req.getParameter("h9");
		String email=req.getParameter("h11");
		Long acno=Long.parseLong(req.getParameter("h25"));
		String aop=req.getParameter("h29");
		Float est=Float.parseFloat(req.getParameter("h33"));
		Float loan=Float.parseFloat(req.getParameter("h34"));
		Float oth=Float.parseFloat(req.getParameter("h35"));
		HomeBean hb=new HomeBean();
		hb.setAcno(acno);
		hb.setAdd(add);
		hb.setAdhar(adhar);
		hb.setAop(aop);
		hb.setDob(dob);
		hb.setEmail(email);
		hb.setEst(est);
		hb.setGen(gen);
		hb.setLoan(loan);
		hb.setMob(mob);
		hb.setName(name);
		hb.setOth(oth);
		hb.setPan(pan);
		hb.setVote(voter);
		boolean b=false;
		try {
			b=hb.validiate();
		}catch(Exception ee) {ee.printStackTrace();}
		if(b)
		{
			Connection cn=null;
			PreparedStatement ps=null;
			try {
				cn=DBmanager.getConnection();
				ps=cn.prepareStatement("update accounts set bal=bal+(?) where acno=(?)");
				ps.setFloat(1, loan);
				ps.setLong(2, acno);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					RequestDispatcher rd=req.getRequestDispatcher("/onlineb.html");
					rd.forward(req, res);
				}else {
					out.println("<h3>Account no. can't found in our database");
					RequestDispatcher rd=req.getRequestDispatcher("/homeloan.jsp");
					rd.include(req, res);
				}
			}catch(Exception ee) {ee.printStackTrace();}
		}else {
			out.println("<h3>Something happend from our side....<br> We're sorry for that<br> please try again..");
			RequestDispatcher rd=req.getRequestDispatcher("/homeloan.jsp");
			rd.include(req, res);
		}
		
	}

}
