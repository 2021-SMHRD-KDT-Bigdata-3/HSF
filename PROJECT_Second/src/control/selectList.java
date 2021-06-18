package control;

import java.io.IOException;

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

		request.setCharacterEncoding("utf-8");
		
		//나이(age)
		//10대 - 1
		//20~30대 - 2
		//40~50대 - 3
		//60~70대 - 4
		int age = Integer.parseInt(request.getParameter("age")) ;
		System.out.println(age);
		

		String[] chk = request.getParameterValues("chk1");
		
		DAO dao = new DAO();
		DTO_COMP dto_comp = null;
		
		
		String comps = "";
		for (int i = 0; i < chk.length; i++) {
			dto_comp = dao.component_view(chk[i]);
			comps += dto_comp.getComponent() +",";
		}
		//System.out.println(comps);
		
		String[] comps_split = comps.split(",");
		for (int i = 0; i < comps_split.length; i++) {
			System.out.println(comps_split[i]);
		}
		
		HttpSession session = request.getSession();		
		session.setAttribute("comps_split",comps_split);
		response.sendRedirect("page1.jsp");
	}

}
