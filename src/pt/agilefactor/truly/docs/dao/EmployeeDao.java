package pt.agilefactor.truly.docs.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pt.agilefactor.truly.docs.model.Employee;
public class EmployeeDao {
	public static int registerEmployee(Employee employee) throws ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
        String INSERT_USERS_SQL = "INSERT INTO employee" + "  (name) VALUES " + " (?);";
        int result = 0;
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema", "root", "password");
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, employee.getName());
            System.out.println(preparedStatement);
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
        return result;
    } 
	public static List<Employee> selectAllUsers(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String SELECT_ALL_USERS  = "select * from users";
		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Employee> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema", "root", "password");
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String name = rs.getString("name");
				users.add(new Employee(name));
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