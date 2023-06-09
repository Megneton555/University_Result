package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.dao;
import dto.dto;

@WebServlet("/insert")
public class insert extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);

		String id = req.getParameter("eid");
         int eid=        Integer.parseInt(id);
		String name = req.getParameter("name");

		String gd = req.getParameter("gender");

		dto d=new dto();
		dao da=new dao();
		
		d.setEID(eid);
		d.setGender(gd);
		d.setName(name);
		String s=da.insert(d);
		String f="inserted";
		if(s.equals(f))
		{
		resp.getWriter().print("<h1>Succesfully Inserted</h1>");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
