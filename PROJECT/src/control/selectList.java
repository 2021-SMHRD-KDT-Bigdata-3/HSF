package control;

import java.io.IOException;
<<<<<<< HEAD
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/selectList")
public class selectList extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//DB�� ���� ���� -> age
		//10�� - 1
		//20~30�� - 2
		//40~50�� - 3
		//60~70�� - 4
		int age = Integer.parseInt(request.getParameter("age")) ;
		System.out.println(age);
		
		
		//DB�� ���� ����  -> chks
		//������� 5���� ����
		String[] chk = request.getParameterValues("chk");
		int[] chks = Arrays.stream(chk).mapToInt(Integer::parseInt).toArray();
		
		for (int i = 0; i < chks.length; i++) {
			System.out.println(chks[i]);
		}

=======

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
//		ArrayList<String> arr = new ArrayList<String>();
//		for (int i = 0; i < chk.length; i++) {
//			dto_comp = dao.component_view(chk[i]);
//			arr.add(dto_comp.getComponent());
//		}
//		System.out.println(arr);
		
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
		
		
	}

}
