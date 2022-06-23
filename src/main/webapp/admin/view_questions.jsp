<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.QuestionDAOImpl"%>
<%@page import="com.entity.QuestionDtls"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: View Questions</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">All Questions</h3>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>


	<table class="table table-striped">
		<thead class="bg-success text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Question Name</th>
				<th scope="col">Option 1</th>
				<th scope="col">Option 2</th>
				<th scope="col">Option 3</th>
				<th scope="col">Option 4</th>
				<th scope="col">Correct Option</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>

			<%
			QuestionDAOImpl dao = new QuestionDAOImpl(DBConnect.getConn());
			List<QuestionDtls> list = dao.getAllQuestions();
			for (QuestionDtls q : list) {
			%>
			<tr>
				<td><%=q.getQid()%></td>
				<td><%=q.getQuestionnm()%></td>
				<td><%=q.getOption1()%></td>
				<td><%=q.getOption2()%></td>
				<td><%=q.getOption3()%></td>
				<td><%=q.getOption4()%></td>
				<td><%=q.getCoption()%></td>
				<td>
				<a href="edit_questions.jsp?id=<%=q.getQid()%>"
					class="btn btn-sm btn-primary">Edit</a> 
				<a href="../delete?id=<%=q.getQid()%>" class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
	<div style="margin-top: 390px;">	
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>