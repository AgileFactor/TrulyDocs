package conexao;
import java.sql.*;
public class Conector {	
	public void main(String[] args) {
		String t = "olaaa";
            try {
				Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/new_schema","root","password");
				
				PreparedStatement ps= myConn.prepareStatement("insert into pessoas(name) values(?)");
				ps.setString(1, t);
				ps.execute();
			}
            catch (Exception exc) {
	            exc.printStackTrace();
	        }
}
}