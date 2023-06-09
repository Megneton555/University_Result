package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.dao;
import dto.dto;

@WebServlet("/upd")
public class upd extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		int eid = Integer.parseInt(id);
		String name = req.getParameter("name");

		String gd = req.getParameter("gender");

		dto d = new dto();
		dao da = new dao();
		
		da.update(eid,name,gd);
	}
	
}
