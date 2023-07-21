package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/singupp")
public class signup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//	super.doPost(req, resp);
		String pd = req.getParameter("pd");

		if (pd.equals("123")) {
			resp.sendRedirect("signup2.html");
		} else {
			resp.getWriter().print("<h1 style='color:red; position: absolute; z-index: 10; margin: 20% 0 0 43%; font-size: 25px; '>Inavlid Password</h1>");
			req.getRequestDispatcher("signup.html").include(req, resp);
		}
	}
}