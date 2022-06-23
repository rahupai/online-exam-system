package com.DAO;

import java.util.List;

import com.entity.QuestionDtls;

public interface QuestionDAO {
	public boolean addQuestions(QuestionDtls q);
	
	public List<QuestionDtls> getAllQuestions();
	
	public QuestionDtls getQuestionById(int id);
	
	public boolean updateEditQuestions(QuestionDtls q);
	
	public boolean deleteQuestions(int id);
}
