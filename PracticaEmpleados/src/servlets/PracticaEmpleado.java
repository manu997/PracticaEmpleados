package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import clases.Empleado;
import consultas.Consultas;

@WebServlet("/PracticaEmpleado")
public class PracticaEmpleado extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public PracticaEmpleado() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Consultas consultas = new Consultas();
		try {
			ArrayList<Empleado> empleados = consultas.mostrarEmpleados();
			request.setAttribute("mostrarEmpleados", empleados);
		} catch (ClassNotFoundException | SQLException e) {
			String error_empleado = "ERROR, no se han podido mostrar los empleados";
			request.setAttribute("error_empleado", error_empleado);
		}
		String rrhh = "/rrhh.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(rrhh);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
