package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.dao;
import dto.dto;

@WebServlet("/fetchall")
public class fetchall extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method st
	//	super.doGet(req, resp);
	dao d=new dao();
	List<dto> z=d.fetchall();
	
	req.setAttribute("sadiq", z);
	RequestDispatcher rd=req.getRequestDispatcher("some.jsp");
	rd.include(req, resp);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
}
