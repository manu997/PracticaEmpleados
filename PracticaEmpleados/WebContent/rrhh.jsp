<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%
	String[] mostrarEmpleados = (String[]) request.getAttribute("mostrarEmpleados");
	String error_empleado = (String) request.getAttribute("error_empleado");
	if(error_empleado == null) {
		error_empleado = "";
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RRHH</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	body {
		line-height: 2;
		text-align: center;
		margin: 1%;
		background-color: #F7F7F7;
	}
	h1 {
		font-weight: bold;
		font-family: 'Verdana';
		margin-bottom: 1%;
		color: #28A745;
	}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1>EMPLEADOS</h1>
	</div>
	<div class="container">
	<%=error_empleado %>
	<table class="table">
		<thead class="thead-dark">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Oficio</th>
		      <th scope="col">Manager</th>
		      <th scope="col">Fecha de contratación</th>
		      <th scope="col">Salario</th>
		      <th scope="col">Comision</th>
		      <th scope="col">Departamento</th>
		    </tr>
		</thead>
		<tbody>
			<%
			int i=0;
			while(i<4) {
				%>
				<tr>
				<td><%=mostrarEmpleados[i] %></td>
				<tr>
			<%
			}
			%>
  		</tbody>
	</table>
	</div>
</body>
</html>