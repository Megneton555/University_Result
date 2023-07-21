package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daostd;

@WebServlet("/delete")
public class delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		String usn = req.getParameter("usn");

		System.out.println(usn);
		daostd d = new daostd();
		String msg = d.delete(usn);
		if (msg.equals("deleted")) {
			resp.getWriter().print("<h1 style='color: #27d927; position: absolute; top: 22%; left: 42%; z-index: 10; font-size: 22px; word-spacing: 2px;'>Deleted successfully</h1>");
			req.getRequestDispatcher("option.html").include(req, resp);
		}

	}
}
