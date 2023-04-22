<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-3">
		<form action="<c:url value="/salary" />">
			<input type="number" name="freetext" /> <input type="submit"
				class="btn btn-primary" value="Find Employee">

		</form>

		<br>
		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3 text-success">Welcome to Employee
					App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Employee Name</th>
							<th scope="col">Department</th>
							<th scope="col">Annual CTC</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${einfo }" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name}</td>
								<td>${p.dept}</td>
								<td>${p.CTC}</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="addEmployee" class="btn btn-outline-danger">Back</a>


				</div>


			</div>


		</div>

	</div>
</body>
</html>