package in.Aios.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.Aios.model.LoginModel;
import in.Aios.model.UserData;

public class LoginDao {
	public static LoginModel loginCheck(LoginModel user) throws ClassNotFoundException {
		String id=user.getEmpid();
		//SQL query
		String INSERT_SQL_QUERY="SELECT * FROM `employee` WHERE `empid` = '"+ user.getEmpid()+"'";
		System.out.println(INSERT_SQL_QUERY);
		
		
		//adding driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try(Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC","root","")){
			PreparedStatement preparedStatement =connection.prepareStatement(INSERT_SQL_QUERY);
			
			 ResultSet re = preparedStatement.executeQuery();
			
			if(re.first()) {
				user.setName(re.getString("name"));
				user.setSurname(re.getString("surname"));
				user.setDept(re.getString("dept"));
				user.setEmail(re.getString("email"));
				user.setDesig(re.getString("desig"));
				user.setDays_left(re.getInt("left_days"));
				user.setPass(re.getString("pass"));
				user.setAttendance(re.getInt("attendance"));
				UserData.leaves.setEmpid(id);
			}
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		UserData.user=user;		
		return user;
	}
}
