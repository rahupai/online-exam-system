package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.QuestionDtls;
import com.entity.ResultsDtls;

public class ResultDaoImpl implements ResultDao{

	private Connection conn;
	
	public ResultDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addResult(ResultsDtls r) {
		boolean f=false;
		
		try {
		   String sql="insert into result(obtainedmarks) values(?)";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ps.setString(1, r.getObtainedmarks());
		   
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

	public List<ResultsDtls> getMarks() {
		List<ResultsDtls> list =new ArrayList<ResultsDtls>();
		ResultsDtls r=null;
		
		try {
			String sql="select * from result";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs= ps.executeQuery();
			
			while(rs.next())
			{
				r=new ResultsDtls();
				r.setId(rs.getInt(1));
				r.setObtainedmarks(rs.getString(2));
				list.add(r);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
   
	
	
}
