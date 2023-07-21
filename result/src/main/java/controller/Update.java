package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.daostd;
import dto.dtostd;

@WebServlet("/upp")
public class Update extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usn = req.getParameter("usn");
		System.out.println(usn);
		daostd d = new daostd();
		dtostd ds = d.fetch(usn);
		req.setAttribute("sad", ds);
		RequestDispatcher rd = req.getRequestDispatcher("upd.jsp");
		rd.include(req, resp);
	}
}