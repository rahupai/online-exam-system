package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.QuestionDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class QuestionDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));

			QuestionDAOImpl dao=new QuestionDAOImpl(DBConnect.getConn());
			boolean f=dao.deleteQuestions(id);
			
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Book delete Successfully..");
				resp.sendRedirect("admin/view_questions.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on server");
				resp.sendRedirect("admin/view_questions.jsp");
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
     
}
