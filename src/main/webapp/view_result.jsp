<%@page import="com.entity.ResultsDtls"%>
<%@page import="com.DAO.ResultDaoImpl"%>
<%@page import="com.entity.QuestionDtls"%>
<%@page import="java.util.List"%>
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
<title>OES:View Result</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>


	<div class="container">
		<h1 class="text-center">Result Page</h1>

		<div class="row">
			<div class="col-md-12">

				<div class="card mt-3">

					<div class="card-body p-1">

						<table class="table table-bordered">

							<tbody>

								<%
								ResultDaoImpl dao = new ResultDaoImpl(DBConnect.getConn());
								List<ResultsDtls> list = dao.getMarks();
								for (ResultsDtls r : list) {
								%>

								

								<tr>
									<th scope="row">Name</th>
									<td>${userobj.name }</td>

								</tr>
								<tr>
									<th scope="row">RollNo</th>
									<td>${userobj.rollno }</td>

								</tr>
								<tr>
									<th scope="row">Email</th>
									<td>${userobj.email }</td>

								</tr>
								<tr>
									<th scope="row">Total Marks</th>
									<td>100</td>

								</tr>

								<tr>
									<th scope="row">Obtained Marks</th>
									<td><%=r.getObtainedmarks()%></td>
								</tr>
                               
                               <%
								}
								%>
                               

							</tbody>
						</table>


					</div>

				</div>
				<div style="text-align: center">
					<a href="home.jsp" class="btn btn-success mt-3">Back</a>
				</div>
			</div>
		</div>
</body>
</html>