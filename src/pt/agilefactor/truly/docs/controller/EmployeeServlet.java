package pt.agilefactor.truly.docs.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pt.agilefactor.truly.docs.dao.EmployeeDao;
import pt.agilefactor.truly.docs.model.Employee;

@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeDao employeeDao;
    public void init() {
    	employeeDao = new EmployeeDao();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
        String name = request.getParameter("name");
        Employee employee = new Employee();
        employee.setName(name);
        try {
            EmployeeDao.registerEmployee(employee);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("List_Docs.jsp");
    }
	public EmployeeDao getEmployeeDao() {
		return employeeDao;
	}
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}
}