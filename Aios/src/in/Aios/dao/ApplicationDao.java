package in.Aios.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import in.Aios.model.ApplicationModel;

public class ApplicationDao {
	public static int application(ApplicationModel app) throws ClassNotFoundException {
		int result=0;
		String INSERT_SQL_QUERY="INSERT INTO `leave_table`(`empid`, `dept`, `leave_type`, `substitude`, `from_date`, `to_date`) VALUES (?,?,?,?,?,?);";
		System.out.println(INSERT_SQL_QUERY);
		
		//adding driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try(Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","")){
			PreparedStatement preparedStatement =connection.prepareStatement(INSERT_SQL_QUERY);
			
			preparedStatement.setString(1,app.getEmpid());
			preparedStatement.setString(2,app.getDept());
			preparedStatement.setString(3,app.getLeave_type());
			preparedStatement.setString(4,app.getSubstitude());
			preparedStatement.setDate(5, app.getFrom_date());
			preparedStatement.setDate(6, app.getTo_date());
			
			
			result = preparedStatement.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
