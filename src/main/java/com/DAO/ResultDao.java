package com.DAO;

import java.util.List;

import com.entity.ResultsDtls;

public interface ResultDao {
   
	public boolean addResult(ResultsDtls r);
	
	public List<ResultsDtls> getMarks();
}
