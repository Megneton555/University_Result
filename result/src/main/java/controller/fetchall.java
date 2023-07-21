package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.daostd;
import dto.dtostd;

@WebServlet("/fetchall")
public class fetchall extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
daostd d = new daostd();
        
		List<dtostd> ds = d.fetchall();

		String dp=(String) req.getSession().getAttribute("dp");
		req.setAttribute("dep", dp);
		req.setAttribute("saqlain", ds);

		RequestDispatcher rd = req.getRequestDispatcher("fetchall.jsp");

		rd.include(req, resp);
	}
}