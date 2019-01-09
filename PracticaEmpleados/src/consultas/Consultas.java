package consultas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Consultas {

	public String mostrarEmpleados() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = null;
		conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/scott", "root", "");
		
		Statement st = conexion.createStatement();
		ResultSet rs = st.executeQuery("select * from emp");
		
		String respuesta = "";
		
		while(rs.next()) {
			respuesta = respuesta + rs.getFloat(1) + "," + rs.getString(2) + "," + rs.getString(3)
					+ "," + rs.getFloat(4) + "," + rs.getDate(5) + "," + rs.getFloat(6);
		}
		return respuesta;
	}

}
