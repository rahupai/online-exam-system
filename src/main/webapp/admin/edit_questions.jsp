<%@page import="com.entity.QuestionDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.QuestionDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Edit Questions</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Questions</h4>
						
						
                        <%
						int id = Integer.parseInt(request.getParameter("id"));
						QuestionDAOImpl dao = new QuestionDAOImpl(DBConnect.getConn());
						QuestionDtls q = dao.getQuestionById(id);
						%> 
                         
                         
                         						
						<form action="../editquestions" method="post">
						
						<input type="hidden" name="id" value="<%=q.getQid()%>">
						
							<div class="form-group">
								<label for="exampleInputEmail1">Question Name*</label> <input
									name="qname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=q.getQuestionnm()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Option 1*</label> <input
									name="option1" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=q.getOption1()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Option 2*</label> <input
									name="option2" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=q.getOption2()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Option 3*</label> <input
									name="option3" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=q.getOption3()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Option 4*</label> <input
									name="option4" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=q.getOption4()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Correct Option*</label> <input
									name="coption" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=q.getCoption()%>">
							</div>
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 40px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>
