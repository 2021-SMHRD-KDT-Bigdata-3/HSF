package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAODTO.DAO;
import DAODTO.DAO_component;
import DAODTO.DTO_COMP;
import DAODTO.DTO_SUPP;
import DAODTO.DTO_component;

@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd;
		request.setCharacterEncoding("utf-8");
		String search_v = request.getParameter("form");
		String select = request.getParameter("select");
		DAO_component com = new DAO_component();
		int age = 27;
		String gender = "남자";

		System.out.println(select + "asdasd");

		if(select.equals("one")) {
		 ArrayList<DTO_component> compo = com.component_search(search_v); String
		 component = compo.get(0).getComponent();
	  
		 request.setAttribute("age", age); request.setAttribute("gender", gender);
		 request.setAttribute("comp", component); rd =
		 request.getRequestDispatcher("page2.jsp?age="+age+"&gender="+gender+"&comp="+
		 component); rd.forward(request, response);
		
		}else if(select.equals("two")) {
			
		ArrayList<DTO_SUPP> supp = com.supp_search(search_v);
		String supplement = supp.get(0).getSp_name();

		request.setAttribute("sp_name", supplement);
		rd = request.getRequestDispatcher("page4.jsp?sp_name" + supplement);
		rd.forward(request, response);
		}
		
		
	}

}
