package jdbc;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class jdbccon {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "123456");
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery("select * from table1");
			while(rs.next())
				System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+" "+ rs.getInt(4)+" "+rs.getString(5)+" "+" "+rs.getInt(6)+" "+rs.getInt(7)+" "+rs.getString(8));
			conn.close();
			
		}catch(Exception e){ 
			System.out.println(e);
		}
	}

}
