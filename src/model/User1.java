package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User1 
{
	private Connection conn;
	private PreparedStatement pst;
	private int select;
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSelect() {
		return select;
	}
	public void setSelect(int select) {
		this.select = select;
	}
	
	public int vote() throws SQLException,ClassNotFoundException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","virubhai@");
		pst=conn.prepareStatement("update voting set vote=? where email=?");
		
		pst.setInt(1, select);
		pst.setString(2, email);
		int x=pst.executeUpdate();
		return x;
	}
	public String check_vote() throws SQLException,ClassNotFoundException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","virubhai@");
		pst=conn.prepareStatement("select * from voting where email=?");
		
		pst.setString(1, email);
		ResultSet rs=pst.executeQuery();
		rs.next();
		String y=rs.getString(6);
		return y;
	}

	public int[] count() throws SQLException,ClassNotFoundException
	{
		int[] C=new int[100];
		int i=0;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","virubhai@");
		pst=conn.prepareStatement("select * from voting");
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			C[i]=rs.getInt(6);
			i=i+1;
		}
		return C;
	}
}
