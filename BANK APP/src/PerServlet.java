

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


@WebServlet("/PerServlet")
public class PerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PerServlet() {
        super();
        
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		java.sql.Date dob=null;
		String name=req.getParameter("p2");
		String gen=req.getParameter("p3");
		String adhar=req.getParameter("p4");
		String d=req.getParameter("p5");
		try {
			dob=convertDate.setDate(d);
		}catch(Exception ee) {
			ee.printStackTrace();
		}
		String pan=req.getParameter("p6");
		String add=req.getParameter("p7");
		String voter=req.getParameter("p8");
		String mob=req.getParameter("p9");
		String email=req.getParameter("p11");
		Long acno=Long.parseLong(req.getParameter("p12"));
		String pol=req.getParameter("p13");
		Float loan=Float.parseFloat(req.getParameter("p14"));
		Integer mon=Integer.parseInt(req.getParameter("p15"));
		Float ins=Float.parseFloat(req.getParameter("p16"));
		PerBean pb=new PerBean();
		pb.setAcno(acno);
		pb.setAdd(add);
		pb.setAdhar(adhar);
		pb.setDob(dob);
		pb.setEmail(email);
		pb.setGen(gen);
		pb.setInst(ins);
		pb.setLoan(loan);
		pb.setMob(mob);
		pb.setMon(mon);
		pb.setName(name);
		pb.setPan(pan);
		pb.setPol(pol);
		pb.setVote(voter);
		boolean b=false;
		try {
			b=pb.validiate();
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
					RequestDispatcher rd=req.getRequestDispatcher("/personloan.jsp");
					rd.include(req, res);
				}
			}catch(Exception ee) {ee.printStackTrace();}
		}else {
			out.println("<h3>Something happend from our side....<br> We're sorry for that<br> please try again..");
			RequestDispatcher rd=req.getRequestDispatcher("/personloan.jsp");
			rd.include(req, res);
		}
	}

}
