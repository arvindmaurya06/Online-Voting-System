package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.concurrent.CancellationException;

public class User {
	private Connection conn;
	private PreparedStatement pst;
	private String firstName;
	private String lastName;
	private String contact;
	private String email;
	private String password;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}




	public int addUser() throws ClassNotFoundException, SQLException 
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "virubhai@");
		pst = conn.prepareStatement("insert into voting (firstName,lastName,contact,email,password) values(?,?,?,?,?)");

		pst.setString(1, firstName);
		pst.setString(2, lastName);
		pst.setString(3, contact);
		pst.setString(4, email);
		pst.setString(5, password);
		
		int x = pst.executeUpdate();
		System.out.println("Add data");
		return x;
	}
	public boolean login() throws SQLException,ClassNotFoundException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","virubhai@");
		pst=conn.prepareStatement("select * from voting where email=? and password=?");
		pst.setString(1, email);
		pst.setString(2, password);
		ResultSet rs=pst.executeQuery();
		return rs.next();
	}

}
