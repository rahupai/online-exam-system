<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add result</title>
<%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Results</h4>
						
						<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg}</p>
						<c:remove var="succMsg" scope="session"/>
						</c:if>
						
						
						<form action="../add_result" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Marks Obtained</label> <input
									name="obtainedmarks" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 329px;">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>