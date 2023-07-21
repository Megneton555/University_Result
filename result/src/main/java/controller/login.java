package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.daoltr;
import dao.daostd;
import dto.dtoltr;

@WebServlet("/login")
public class login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doGet(req, resp);

		daoltr d = new daoltr();
		String el = req.getParameter("email");
		String pd = req.getParameter("pwdd");

		dtoltr ds = d.fetch(el);
		if (ds != null) {
			String dept = ds.getDept();

			HttpSession h = req.getSession();
			HttpSession h2 = req.getSession();
			h.setAttribute("dp", dept);
			h2.setAttribute("dpp", dept);
		} else {
			resp.getWriter().print("<h1 style='color:red; position: absolute; top: 16%; left: 54.4%; font-size: 20px; word-spacing: 2px;'>Invalid Email</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);

		}

		if (ds != null) {
			if (ds.getPassword().equals(pd)) {
				resp.sendRedirect("option.html");
			} else {
				resp.getWriter().print("<h1 style='color:red; position: absolute; top: 16%; left: 54.4%; font-size: 20px; word-spacing: 2px;'>Invalid password</h1>");
				req.getRequestDispatcher("login.html").include(req, resp);
			}
		}
	}
}
