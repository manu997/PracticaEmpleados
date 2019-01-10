package consultas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import clases.Empleado;

public class Consultas {

	public ArrayList<Empleado> mostrarEmpleados() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = null;
		conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/scott", "root", "");
		
		Statement st = conexion.createStatement();
		ResultSet rs = st.executeQuery("select emp.empno, emp.ename, emp.job, emp.mgr, "
				+ "emp.hiredate, emp.sal, emp.comm, dept.dname from emp, dept where emp.deptno = dept.deptno");
		
		ArrayList<Empleado> alEmpleados = new ArrayList<Empleado>();
		while(rs.next()) {
			alEmpleados.add(new Empleado(rs.getBigDecimal(1), rs.getString(2), rs.getString(3), rs.getBigDecimal(1), 
					rs.getDate(5), rs.getFloat(6), rs.getFloat(7), rs.getString(8)));
		}
		conexion.close();
		return alEmpleados;
	}

}
