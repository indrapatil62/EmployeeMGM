<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="./base.jsp" %>
</head>
<body>

<div class="container mt-3">

    <div class="row">

      <div class="col-md-6 offset-md-3">

        <h1 class="text-center mb-3">Update Employee Details</h1>

        <form action="${pageContext.request.contextPath }\saveData"
          method="post">

          <input type="hidden" value="${employee.id}" name="id" />
          <div class="form-group">
            <label for="name">Employee Name</label> <input type="text"
              class="form-control" id="name" aria-describedby="emailHelp"
              value="${employee.name }"
              name="name" placeholder="Enter the Student name here"
              >
          </div>


          <div class="form-group">

            <label for="email">Email</label>
             <input type="email"
              class="form-control" 
              id="email" 
              name="email" 
              value="${employee.email }"
              placeholder="Enter the  Student Email here">
          </div>

          <div>
            <label for="gender">Enter Gender :- </label> 
            <input type="radio"
              name="gender"
              id="gender" value="Male"> Male &nbsp;&nbsp;
            <input type="radio"
              name="gender"
            
              id="gender" value="Female"> Female
          </div>
          
          <div class="form-group">
            <label for="dept">Enter Department</label> <input type="text"
              placeholder="Enter Department" name="dept"
              value="${employee.dept}"
              class="form-control" id="dept">
          </div>
          
          <div class="form-group">
            <label for="address">Enter Address</label> <input type="text"
              placeholder="Enter Address" name="address"
              value="${employee.address }"
              class="form-control" id="address">
          </div>         

          <div class="container text-center">
            <a href="${pageContext.request.contextPath }/"
              class="btn btn-outline-danger">Back</a>
            <button type="submit" class="btn btn-primary">Update Employee</button>
          </div>
        </form>

      </div>

    </div>


  </div>
          
</body>
</html>