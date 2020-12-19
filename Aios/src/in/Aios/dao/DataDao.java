package in.Aios.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.Aios.model.ApplicationModel;

public class DataDao {
	public static ApplicationModel[] userdata(ApplicationModel user) throws ClassNotFoundException {

		int rows = 0;
		ApplicationModel[] applied_leave = {};
		// SQL query
		String INSERT_SQL_QUERY = "SELECT * FROM `leave_table` WHERE `empid` = '" + user.getEmpid() + "'";
		System.out.println(INSERT_SQL_QUERY);

		// adding driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/aios?serverTimezone=UTC",
				"root", "")) {
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL_QUERY);

			ResultSet re = preparedStatement.executeQuery();
		
			if(re.last()){
				rows = re.getRow();
				re.beforeFirst();}
			 
			applied_leave = new ApplicationModel[rows];
			int i = 0;
			
			while (re.next()) {
				System.out.println(re.getString("id"));
				applied_leave[i]=new ApplicationModel();
				applied_leave[i].setEmpid(user.getEmpid());
				applied_leave[i].setFrom_date(re.getDate("from_date"));
				applied_leave[i].setTo_date(re.getDate("to_date"));
				applied_leave[i].setDept(re.getString("dept"));
				applied_leave[i].setLeave_type(re.getString("leave_type"));
				applied_leave[i].setSubstitude(re.getString("substitude"));
				applied_leave[i].setStatus(re.getString("status"));
				System.out.println(re.getString("leave_type")+" "+re.getString("status"));
				i++;
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return applied_leave;
	}

}
