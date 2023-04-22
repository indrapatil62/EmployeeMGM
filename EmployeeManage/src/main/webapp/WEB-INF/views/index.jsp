<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
</head>
<body>
	<h4 class="text-success text-center">${msg }</h4>
	<div class="container mt-5 w-75">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h3 class="text-center mb-3 text-primary">Fill the Employee
					details</h3>
				<form action="saveData" method="post">
					<div class="form-group">
						<label for="text">Employee Id</label> <input type="text"
							class="form-control" id="id" name="id"
							placeholder="Enter the  Employee Email here">
					</div>

					<div class="form-group">
						<label for="name">Employee Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter the  Employee name here">
					</div>

					<div class="form-group">

						<label for="text">Employee Email</label> <input type="text"
							class="form-control" id="email" name="email"
							placeholder="Enter the  Employee Email here">
					</div>

					<div>
						<label for="gender">Enter Gender :- </label> <input type="radio"
							name="gender" id="gender" value="Male"> Male &nbsp;&nbsp;
						<input type="radio" name="gender" id="gender" value="Female">
						Female
					</div>

					<div>
						Enter Department :- <input type="text" class="form-control"
							id="Dept" name="Dept"
							placeholder="Enter the  Employee Department here">
					</div>
			<br>

			<div class="form-group">
				<label for="address">Enter Address</label> <input type="text"
					placeholder="Enter Address" name="address" class="form-control"
					id="address">
			</div>

			<div class="container text-center">
				<a href="${pageContext.request.contextPath }\"
					class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-primary">Add Employee</button>
			</div>
			</form>

		</div>

	</div>

	</div>

</body>
</html>