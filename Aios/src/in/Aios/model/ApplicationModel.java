package in.Aios.model;

import java.sql.Date;

public class ApplicationModel {
//	INSERT INTO `leave_table`(`empid`, `dept`, `leave type`, `substitude`, `from_date`, `to_date`) 
//	VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6])
	private String empid;
	private String dept;
	private String leave_type;
	private String substitude;
	private Date from_date;
	private Date to_date;
	private String status;
	private int id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getLeave_type() {
		return leave_type;
	}
	public void setLeave_type(String leave_type) {
		this.leave_type = leave_type;
	}
	public String getSubstitude() {
		return substitude;
	}
	public void setSubstitude(String substitude) {
		this.substitude = substitude;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public Date getTo_date() {
		return to_date;
	}
	public void setTo_date(Date to_date) {
		this.to_date = to_date;
	}
	
	
	
	
	
}
