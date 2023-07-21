package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daostd;
import dto.dtostd;

@WebServlet("/fetchallstudents")
public class fetchallstudents extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pdd = "123";
		String pd = req.getParameter("password");
		if (pd.equals(pdd)) {
			daostd d = new daostd();
			List<dtostd> s = d.fetchall();
			req.setAttribute("stud", s);
			RequestDispatcher rd = req.getRequestDispatcher("fallstud.jsp");
			rd.forward(req, resp);
		} else {
			resp.getWriter().print("<h1 style='color:red; position: absolute; top:40%; left:43%; z-index: 10; font-size: 25px;'>Inavlid Password</h1>");
			req.getRequestDispatcher("pdd.html").include(req, resp);
		}
	}
}