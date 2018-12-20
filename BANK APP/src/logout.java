

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Logout", urlPatterns = { "/logout" })
public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public logout() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=LoginServlet.uname;
		response.setContentType("text/html");
		Cookie cc=new Cookie(uname,"");
        cc.setMaxAge(0);
        response.addCookie(cc);
		HttpSession ses=request.getSession();
        ses.invalidate();
        RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
        rd.forward(request, response);
        
	}

}
