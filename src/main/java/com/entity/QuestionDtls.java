package com.entity;

public class QuestionDtls {
      
	private int qid;
	private String questionnm;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String coption;
	private String email;
	
	public QuestionDtls() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestionDtls(String questionnm, String option1, String option2, String option3, String option4,
			String coption,String email) {
		super();
		this.questionnm = questionnm;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.coption = coption;
		this.email = email;
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getQuestionnm() {
		return questionnm;
	}

	public void setQuestionnm(String questionnm) {
		this.questionnm = questionnm;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public String getCoption() {
		return coption;
	}

	public void setCoption(String coption) {
		this.coption = coption;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "QuestionDtls [qid=" + qid + ", questionnm=" + questionnm + ", option1=" + option1 + ", option2="
				+ option2 + ", option3=" + option3 + ", option4=" + option4 + ", coption=" + coption + ", email="
				+ email + "]";
	}

	
	
	
	
}
