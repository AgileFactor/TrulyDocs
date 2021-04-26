package pt.agilefactor.truly.docs.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pt.agilefactor.truly.docs.model.User;

public class UserDao {

private static final String SELECT_ALL_USERS = "SELECT name from employee";

public static List<User> selectAllUsers() throws ClassNotFoundException {
	Class.forName("com.mysql.jdbc.Driver");
	List<User> users = new ArrayList<>();
	try (Connection connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema", "root", "password");
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
		System.out.println(preparedStatement);
		ResultSet rs = preparedStatement.executeQuery();
		while (rs.next()) {
			String name = rs.getString("name");
			users.add(new User(name));
		}
	} catch (SQLException e) {
		printSQLException(e);
	}
	return users;
}
private static void printSQLException(SQLException ex) {
    for (Throwable e: ex) {
        if (e instanceof SQLException) {
            e.printStackTrace(System.err);
            System.err.println("SQLState: " + ((SQLException) e).getSQLState());
            System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
            System.err.println("Message: " + e.getMessage());
            Throwable t = ex.getCause();
            while (t != null) {
                System.out.println("Cause: " + t);
                t = t.getCause();
            }
        }
    }
}
}