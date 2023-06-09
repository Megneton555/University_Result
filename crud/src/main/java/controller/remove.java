package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.env.INameEnvironment;

import dao.dao;
import dto.dto;

@WebServlet("/remove")
public class remove extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	// super.doGet(req, resp);
	String id=req.getParameter("id");
	int eid=Integer.parseInt(id);
	dao da=new dao();
	String d=da.remove(eid);
	String c="rmd";
	if(d.equals(c))
	{
		resp.getWriter().print("<h1>Succesfully Removed</h1>");
		
		List<dto> l=da.fetchall();
		req.setAttribute("sadiq", l);
		RequestDispatcher rd=req.getRequestDispatcher("some.jsp");
		rd.forward(req, resp);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
}
