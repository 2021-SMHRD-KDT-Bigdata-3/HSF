package control;

import java.io.IOException;
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

		
		
	}

}
