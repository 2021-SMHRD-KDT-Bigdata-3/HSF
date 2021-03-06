package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAODTO.DAO;
import DAODTO.DTO_COMP;

@WebServlet("/selectList")
public class selectList extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd;
		request.setCharacterEncoding("utf-8");

		// 나이(age)
		// 10대 - 1
		// 20~30대 - 2
		// 40~50대 - 3
		// 60~70대 - 4
		if(request.getParameter("input_age").equals("") || request.getParameter("gender")==null) {
			response.sendRedirect("page1.jsp");
		}else {
			int age = Integer.parseInt(request.getParameter("input_age"));
			String gender = request.getParameter("gender");
			
	
			String[] chk = request.getParameterValues("chk1");
	
			DAO dao = new DAO();
			DTO_COMP dto_comp = null;
			ArrayList<DTO_COMP> arr_comp = new ArrayList<DTO_COMP>();
			;
			String comps = "";
			for (int i = 0; i < chk.length; i++) {
				arr_comp.add(i, dao.statecomp_view(chk[i]));
			}
	
			request.setAttribute("age", age);
			request.setAttribute("gender", gender);
			request.setAttribute("arr", arr_comp);
			rd = request.getRequestDispatcher("page1.jsp");
			rd.forward(request, response);
		}
		

	}

}
