package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAODTO.DAO;

@WebServlet("/comment")
public class comment extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		DAO dao = new DAO();
		int cnt = dao.comment_insert(id, content, pw, title);
		if (cnt != 0) {
			System.out.println("작성완료");
		}
		request.setAttribute("sp_name", title);
		RequestDispatcher dispatcher = request.getRequestDispatcher("page4.jsp");
		dispatcher.forward(request, response); 

	}
}
