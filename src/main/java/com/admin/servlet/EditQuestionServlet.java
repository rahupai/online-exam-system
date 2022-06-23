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

@WebServlet("/editquestions")
public class EditQuestionServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int qid = Integer.parseInt(req.getParameter("id"));
			String questionnm = req.getParameter("qname");
			String option1 = req.getParameter("option1");
			String option2 = req.getParameter("option2");
			String option3 = req.getParameter("option3");
			String option4 = req.getParameter("option4");
			String coption = req.getParameter("coption");

			QuestionDtls q = new QuestionDtls();
			q.setQid(qid);
			q.setQuestionnm(questionnm);
			q.setOption1(option1);
			q.setOption2(option2);
			q.setOption3(option3);
			q.setOption4(option4);
			q.setCoption(coption);

			QuestionDAOImpl dao = new QuestionDAOImpl(DBConnect.getConn());
			boolean f = dao.updateEditQuestions(q);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "question updated Successfully..");
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
