<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.QuestionDAOImpl"%>
<%@page import="com.entity.QuestionDtls"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OES:Exam Page</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">


	<div class="container">
		<h1 class="text-center">Exam Page</h1>

		<div class="row">
			<div class="col-md-12">

				<div class="card mt-3">

					<div class="card-body p-4">

						<%
						QuestionDAOImpl dao = new QuestionDAOImpl(DBConnect.getConn());
						List<QuestionDtls> list = dao.getAllQuestions();

						for (QuestionDtls q : list) {
						%>
						<h6 class="card-title">
							<p><%=q.getQid()%>)
								<%=q.getQuestionnm()%></p>
						</h6>
						<input type="radio" id="html" name="fav_language" value="">
						<label for="html"><%=q.getOption1()%></label><br> <input
							type="radio" id="html" name="fav_language" value=""> <label
							for="html"><%=q.getOption2()%></label><br> <input
							type="radio" id="html" name="fav_language" value=""> <label
							for="html"><%=q.getOption3()%></label><br> <input
							type="radio" id="html" name="fav_language" value=""> <label
							for="html" class="mb-3"><%=q.getOption4()%></label><br>


						<%
						}
						%>






					</div>




				</div><br>
				<div class="text-center">
					<a href="home.jsp" class="btn btn-success">Submit</a>
				</div>

				
			</div>
		</div>
	</div>




</body>
</html>