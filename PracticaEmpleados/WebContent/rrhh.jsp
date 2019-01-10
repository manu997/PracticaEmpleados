<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.ArrayList"%>
    <%@ page import ="clases.Empleado"%>
	<%
	ArrayList<Empleado> mostrarEmpleados = (ArrayList<Empleado>) request.getAttribute("mostrarEmpleados");
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
<script>
	function recuperaContrasenia() {
        // se genera la query_string
        var datos = 'usuario=' + document.getElementById("usuario").value;
        alert("Datos a enviar: " + datos);

        var xmlhttp;  // objeto XMLHttpRequest
        if (window.XMLHttpRequest) {  // para IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {  // para IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
        // si el resultado está listo (readyState==4) y la respuesta es correcta (status==200)
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            var respuesta = xmlhttp.responseText;
            if (respuesta=='') {  // no se encontró el usuario
            	document.getElementById("usuarioInexistente").style.visibility = 'visible';
            } else {
            	document.getElementById("usuarioInexistente").style.visibility = 'hidden';
            }
            	document.getElementById("clave").value = respuesta;
            	document.getElementById("usuario").focus();
        	}
	    }
	    xmlhttp.open("GET","CompruebaUsuario?" + datos ,true);  // crea la conexión con parámetros: método, url, asíncrono?
	    xmlhttp.setRequestHeader("X-Requested-With", "xmlhttprequest");  // establece la cabecera HTTP necesaria
	    xmlhttp.send();  // lanza la solicitud
    }
  </script>
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
		      <th scope="col"></th>
		    </tr>
		</thead>
		<tbody>
			<%
			for(int i=0; i<mostrarEmpleados.size(); i++) {
			%><tr>
				<th scope="row"><%=mostrarEmpleados.get(i).getId().intValue() %></th>
				<td><%=mostrarEmpleados.get(i).getName() %></td>
				<td><%=mostrarEmpleados.get(i).getJob() %></td>
				<td><%=mostrarEmpleados.get(i).getManager().intValue() %></td>
				<td><%=mostrarEmpleados.get(i).getHiredate() %></td>
				<td><%=mostrarEmpleados.get(i).getSalary() %></td>
				<td><%=mostrarEmpleados.get(i).getCommission() %></td>
				<td><%=mostrarEmpleados.get(i).getDepartment() %></td>
				<td>
					<div class="btn-group" role="group">
					  <button type="button" class="btn btn-info">Modificar</button>
					  <button type="button" class="btn btn-danger">Eliminar</button>
					</div>
				</td>
			  <tr>
			<%
			}
			%>
  		</tbody>
	</table>
	</div>
</body>
</html>