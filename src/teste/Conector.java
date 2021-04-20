package teste;
import java.sql.*;
public class Conector {	
	public static void main(String[] args) {
		String t = "ello";
            try {
				Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema","root","password");
				PreparedStatement ps= myConn.prepareStatement("insert into employee(name) values(?)");
				ps.setString(1, t);
				ps.execute();
			}
            catch (Exception exc) {
	            exc.printStackTrace();
	        }
}
}