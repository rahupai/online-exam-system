<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OES:Index</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
 <%@include file="all_component/navbar.jsp" %>
 <div style="margin-top:150px">
 <div class="container-fluid ">
		<h1 class="text-center text-primary">Online Examination System</h1>
	</div>
</div>	
	
 <div class="text-center mt-3 p-5 ">
			<a href="login.jsp" class="btn btn-success mr-5 "><i
				class="fas fa-sign-in-alt"></i> Login</a> <a href="register.jsp"
				class="btn btn-primary text-white"><i class="fas fa-user-plus"></i>
				Register</a>
		</div>
 
 <div style="margin-top: 190px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
 
</body>
</html>