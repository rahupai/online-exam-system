package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ResultDaoImpl;
import com.DB.DBConnect;
import com.entity.ResultsDtls;

@WebServlet("/add_result")
public class ResultAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
        	
			String obtmarks=req.getParameter("obtainedmarks");
			
			ResultsDtls r=new ResultsDtls(obtmarks);
			//System.out.println(r);
			
			ResultDaoImpl dao=new ResultDaoImpl(DBConnect.getConn());
			
			boolean f=dao.addResult(r);
			
			HttpSession session=req.getSession();
			
			if(f)
			{
			 session.setAttribute("succMsg", "Result Added Sucessfully");
			 resp.sendRedirect("admin/add_result.jsp");
			}
			else
			{
			 session.setAttribute("failedMsg", "Something wrong on Server");
			 resp.sendRedirect("admin/add_result.jsp");	
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
    
	
}
