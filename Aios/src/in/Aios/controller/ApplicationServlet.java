package in.Aios.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.Aios.dao.ApplicationDao;
import in.Aios.dao.DataDao;
import in.Aios.model.ApplicationModel;
import in.Aios.model.UserData;

/**
 * Servlet implementation class ApplicationServlet
 */
@WebServlet("/application")
public class ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/application.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String from_date=request.getParameter("from_date");
		String to_date=request.getParameter("to_date");
		int task=-1;
		
		ApplicationModel app=new ApplicationModel();
		app.setEmpid(request.getParameter("id"));
		app.setDept(request.getParameter("dept"));
		app.setLeave_type(request.getParameter("leave_type"));
		app.setSubstitude(request.getParameter("subs"));
		
		try {
			Date from = new java.sql.Date((new SimpleDateFormat("yyyy-MM-dd").parse(from_date)).getTime());
			Date to= new java.sql.Date((new SimpleDateFormat("yyyy-MM-dd").parse(to_date)).getTime());
			
			app.setFrom_date(from);
			app.setTo_date(to);
			 task= ApplicationDao.application(app);
		} catch (ParseException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		request.setAttribute("user", UserData.user);
		try {
			request.setAttribute("leave_arr", DataDao.userdata(UserData.leaves));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		if(task==1) {
			request.setAttribute("err","Applied!! ");
			RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/application.jsp?id="+request.getParameter("id"));
			dispatcher.forward(request, response);
		}
		else {
			request.setAttribute("err","Error orrecued RETRY ");
			RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/application.jsp");
			dispatcher.forward(request, response);
		}
			
		
	}

}
