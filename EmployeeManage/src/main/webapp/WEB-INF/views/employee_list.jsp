<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Insert title here</title>
</head>
<body>
 <div class="container mt-3">
<form action ="<c:url value="/Employee_search" />">
    <input type="number"  name="freetext" />
    
  <input type="submit" class="btn btn-primary" value="Find Employee"> 
  
  </form>

<br>
     <div class="row">

      <div class="col-md-12">

        <h1 class="text-center mb-3 text-success">Welcome to Employee App</h1>

        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Employee Name</th>
              <th scope="col">Email</th>
              <th scope="col">Gender</th>
              <th scope="col">Department</th>
              <th scope="col">Address</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
                      
            <c:forEach items="${einfo }" var="p">
              <tr>
                <th scope="row">${p.id }</th>
                <td>${p.name}</td>
                <td>${p.email}</td>
                <td>${p.gender}</td>
                <td>${p.dept}</td>
                <td>${p.address}</td>                            
                <td>
                <a href="delete/${p.id}" onclick="if(!(confirm('Are you sure want to delete this Employee permanently?'))) return false"><i class="fas fa-trash text-danger" style="font-size: 30px;"></i></a>
                <a href="update/${p.id}"><i class="fas fa-pen-nib text-primary" style="font-size: 30px;"></i></a>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>

        <div class="container text-center">
        <a href="addEmployee"
              class="btn btn-outline-danger">Back</a>

          <a href="addEmployee" class="btn btn-outline-success">Add
            Employee</a>

        </div>


      </div>


    </div>

  </div>
</body>
</html>