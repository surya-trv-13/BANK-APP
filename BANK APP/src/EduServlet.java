

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


@WebServlet("/EduServlet")
public class EduServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EduServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		java.sql.Date dob=null;
		String name=req.getParameter("e3");
		String gen=req.getParameter("e2");
		String adhar=req.getParameter("e4");
		String d=req.getParameter("e7");
		try {
			dob=convertDate.setDate(d);
		}catch(Exception ee) {
			ee.printStackTrace();
		}
		String pan=req.getParameter("e6");
		String add=req.getParameter("e9");
		Float percent=Float.parseFloat(req.getParameter("e13"));
		String mob=req.getParameter("e12");
		String email=req.getParameter("e15");
		Long acno=Long.parseLong(req.getParameter("e31"));
		String noc=req.getParameter("e37");
		Float loan=Float.parseFloat(req.getParameter("e42"));
		Integer mon=Integer.parseInt(req.getParameter("e43"));
		Float ins=Float.parseFloat(req.getParameter("e44"));
		EduBean pb=new EduBean();
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
		pb.setNoc(noc);
		pb.setPan(pan);
		pb.setPercent(percent);
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
				ps.setFloat(1,loan);
				ps.setLong(2, acno);
				ResultSet rs=ps.executeQuery();
				if(rs.next()) {
					RequestDispatcher rd=req.getRequestDispatcher("/onlineb.html");
					rd.forward(req, res);
				}else {
					out.println("<h3>Account no. can't found in our database");
					RequestDispatcher rd=req.getRequestDispatcher("/eduloan.jsp");
					rd.include(req, res);
				}
			}catch(Exception ee) {ee.printStackTrace();}
		}else {
			out.println("<h3>Something happend from our side....<br> We're sorry for that<br> please try again..");
			RequestDispatcher rd=req.getRequestDispatcher("/eduloan.jsp");
			rd.include(req, res);
		}
	}

}
