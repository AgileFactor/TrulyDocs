package teste;
import java.sql.*;
public class teste {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
            try {
				Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TrulyDocs","root","password");
				if (myConn == null) {
			         System.out.println("JDBC connection is not established");
			         return;
			      }
				else
			         System.out.println("Congratulations, JDBC connection is established successfully.\n");
			      myConn.close();
			}
            catch (Exception exc) {
	            exc.printStackTrace();
	        }
}
}