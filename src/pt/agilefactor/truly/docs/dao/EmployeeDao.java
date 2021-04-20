package pt.agilefactor.truly.docs.dao;
import pt.agilefactor.truly.docs.model.Employee;
import java.sql.*;
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