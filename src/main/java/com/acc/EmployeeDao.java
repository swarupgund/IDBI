package com.acc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDao {
	public int registerEmployee(Employee employee) throws ClassNotFoundException, SQLException {
		String INSER_USERS_SQL = "INSERT  INTO  employee (id,first_name,last_name,username,password,address,contact) VALUES (?,?,?,?,?,?,?);";
		int result = 0;
		Connection connection = null;
		Class.forName("com.mysql.jdbc.Driver");
		try {
			String userName = "root";
			String password = "root";
			String url = "jdbc:mysql://localhost:3306/mysql";
			connection = DriverManager.getConnection(url, userName, password);
			System.out.println("Database connection established");
			PreparedStatement preaparedStatement = connection.prepareStatement(INSER_USERS_SQL);

			preaparedStatement.setInt(1, employee.getId());
			
			preaparedStatement.setString(2, employee.getFirstName());
			preaparedStatement.setString(3, employee.getLastName());
			preaparedStatement.setString(4, employee.getUserName());
			preaparedStatement.setString(5, employee.getPassword());
			preaparedStatement.setString(6, employee.getAddress());
			preaparedStatement.setString(7, employee.getContact());
			System.out.println(preaparedStatement);
			result = preaparedStatement.executeUpdate();
		} catch (SQLException e) {
			System.err.println("Cannot connect to database server");
            System.err.println(e.getMessage());
			e.printStackTrace();
		} finally {
			if (connection != null) {
				 try {
					 connection.close();
	                    System.out.println("Database Connection Terminated");
	                } catch (Exception e) {}
			}
		}
		return result;
	}

}
