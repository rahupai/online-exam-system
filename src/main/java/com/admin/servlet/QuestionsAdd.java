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
import com.entity.QuestionDtls;

@WebServlet("/add_questions")
public class QuestionsAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String questionnm=req.getParameter("qname");
			String option1=req.getParameter("option1");
			String option2=req.getParameter("option2");
			String option3=req.getParameter("option3");
			String option4=req.getParameter("option4");
			String coption=req.getParameter("coption");

			QuestionDtls q=new QuestionDtls(questionnm,option1,option2,option3,option4,coption,"admin");
			
			QuestionDAOImpl dao= new QuestionDAOImpl(DBConnect.getConn());
			
			boolean f=dao.addQuestions(q);
			
			HttpSession session = req.getSession();
			
			if (f) {
				session.setAttribute("succMsg", "Question Added Sucessfully");
				resp.sendRedirect("admin/add_questions.jsp");
			} else {
				session.setAttribute("failedMsg", "Something wrong on Server");
				resp.sendRedirect("admin/add_questions.jsp");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
   
}
