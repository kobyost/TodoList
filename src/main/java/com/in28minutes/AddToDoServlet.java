package com.in28minutes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddToDoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TodoService todoService = new TodoService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/add-todo.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String todoName = request.getParameter("todoName");
		String todoCatagory = request.getParameter("todoCatagory");
		if ("".equals(todoName)) {
			request.setAttribute("errorMessage", "Enter a valid Todo");
		} else {
			todoService.addTodo(new Todo(todoName, todoCatagory));
		}
		request.setAttribute("todos", todoService.retrieveTodos());
		request.getRequestDispatcher("/WEB-INF/views/list-todos.jsp").forward(request, response);
	}

}
