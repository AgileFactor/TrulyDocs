package pt.agilefactor.truly.docs;

import java.sql.*;


public class Ligacao {
	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/testeTable";
		String username = "root";
		String password = "password";
		
		try {
			Connection connection = DriverManager.getConnection(url, username, password);
			
			String sql = "INSERT INTO user (username, email, password) VALUES (?, ?, ?)";
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, "tiago");
			statement.setString(2, "teste@teste");
			statement.setString(3, "senha");
			
			
			int rows = statement.executeUpdate();
			if (rows > 0) {
				System.out.println("A row has been inserted.");
			}
			
			statement.close();
			connection.close();
			
		}catch(SQLException e) {
			System.out.println("Oops, não foi possivel fazer a ligação");
			e.printStackTrace();
		}
		
	
 	

	}
}
