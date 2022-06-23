package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.QuestionDtls;

public class QuestionDAOImpl implements QuestionDAO {
    
	private Connection conn;
	
	public QuestionDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addQuestions(QuestionDtls q) {
		boolean f= false;
		
		try {
			String sql="insert into question_bank(questionnm,option1,option2,option3,option4,coption,email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, q.getQuestionnm());
			ps.setString(2, q.getOption1());
			ps.setString(3, q.getOption2());
			ps.setString(4, q.getOption3());
			ps.setString(5, q.getOption4());
			ps.setString(6, q.getCoption());
			ps.setString(7, q.getEmail());
			
			int i=ps.executeUpdate();
			
			if(i==1)
	           {
	        	   f=true;
	           }   
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	public List<QuestionDtls> getAllQuestions() {
		
		List<QuestionDtls> list= new ArrayList<QuestionDtls>();
		QuestionDtls q=null;
		
		try {
			
			String sql="select * from question_bank";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs= ps.executeQuery();
			
			while(rs.next())
			{
				q=new QuestionDtls();
				q.setQid(rs.getInt(1));
				q.setQuestionnm(rs.getString(2));
				q.setOption1(rs.getString(3));
				q.setOption2(rs.getString(4));
				q.setOption3(rs.getString(5));
				q.setOption4(rs.getString(6));
				q.setCoption(rs.getString(7));
				q.setEmail(rs.getString(8));
				list.add(q);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list	;
	}

	public QuestionDtls getQuestionById(int id) {
		QuestionDtls q=null; 
		
		try {
			String sql="select * from question_bank where qid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);	
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				q=new QuestionDtls();
				q.setQid(rs.getInt(1));
				q.setQuestionnm(rs.getString(2));
				q.setOption1(rs.getString(3));
				q.setOption2(rs.getString(4));
				q.setOption3(rs.getString(5));
				q.setOption4(rs.getString(6));
				q.setCoption(rs.getString(7));
				q.setEmail(rs.getString(8));
								
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return q;
	}

	public boolean updateEditQuestions(QuestionDtls q) {
		boolean f=false;
		
		try {
			String sql="update question_bank set questionnm=?,option1=?,option2=?,option3=?,option4=?,coption=? where qid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, q.getQuestionnm());
			ps.setString(2, q.getOption1());
			ps.setString(3, q.getOption2());
			ps.setString(4, q.getOption3());
			ps.setString(5, q.getOption4());
			ps.setString(6, q.getCoption());
			ps.setInt(7, q.getQid());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	public boolean deleteQuestions(int id) {
		boolean f=false;
		
		try {
			String sql="delete from  question_bank where qid=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			
			if(i==1)
			{
			   f=true;	
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
   	
	
    
}


