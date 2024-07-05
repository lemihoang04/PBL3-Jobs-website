package context;

import java.sql.*;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/website";
	public Connection getConnection() throws Exception {
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,"root","");
			return conn;
		}
	}

	



