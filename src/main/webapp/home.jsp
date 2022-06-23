<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
a{
 text-decoration: none;
 color:black;
}

a:hover{
    text-decoration:none;
    color:black;
}
</style>
<title>User:Home</title>
</head>
<body style="background-color: #f0f1f2;">
	
		<%@include file="all_component/navbar.jsp"%>
		<div class="container">
		<div class="row p-5">
			<div class="col-md-3 mb-5">
				<a href="examrules.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-user-graduate fa-4x text-primary"></i><br>
							<h4>Attempt exam</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="view_result.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-poll fa-4x text-danger"></i>
							<h4>View Result</h4>
							-----------
						</div>
					</div>
				</a>
			</div>
			
			
			<div class="col-md-3">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-user-circle fa-4x text-success"></i>
							<h4>Edit Profile</h4>
							-----------
						</div>
					</div>
				</a>
			</div>
			
			
			<div class="col-md-3">
			   <a data-toggle="modal" data-target="#exampleModalCenter">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-sign-out-alt fa-4x text-primary"></i><br>
						<h4>Logout</h4>
						-----------
					</div>
				</div>
				</a>
			</div>
		</div>

	</div>
	
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do You want logout</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="./logout" type="button" class="btn btn-primary">Logout</a>
					</div>

				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	
	
	

	<div style="margin-top: 230px;">
		<%@include file="all_component/footer.jsp"%>
	</div>
		
</body>
</body>
</html>