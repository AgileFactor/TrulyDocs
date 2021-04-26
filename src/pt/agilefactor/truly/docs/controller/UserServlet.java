package pt.agilefactor.truly.docs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pt.agilefactor.truly.docs.dao.UserDao;
import pt.agilefactor.truly.docs.model.User;

@WebServlet("/tabela")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;
	public void init() {
		setUserDao(new UserDao());
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		List<User> listUser = null;
		try {
			listUser = UserDao.selectAllUsers();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("List_Docs.jsp");
		dispatcher.forward(request, response);
		response.sendRedirect("List_Docs.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
