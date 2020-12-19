package in.Aios.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.Aios.dao.LoginDao;
import in.Aios.model.LoginModel;
import in.Aios.model.UserData;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		
		LoginModel user = new LoginModel();
		user.setEmpid(id);
		
		try {
			user=LoginDao.loginCheck(user);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		if( pass.equals(user.getPass())) {
			request.setAttribute("user",user);
			UserData.leaves.setEmpid(user.getEmpid());
			RequestDispatcher dispatcher = request.getRequestDispatcher("/main");
			dispatcher.forward(request, response);
		}
		else {
			request.setAttribute("invalid_login", "INCORRECT LOGIN ID PASSWORD");
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/login.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
