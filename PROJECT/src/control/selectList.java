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

		//DB에 넣을 연령 -> age
		//10대 - 1
		//20~30대 - 2
		//40~50대 - 3
		//60~70대 - 4
		int age = Integer.parseInt(request.getParameter("age")) ;
		System.out.println(age);
		
		
		//DB에 넣을 증상  -> chks
		//순서대로 5부터 시작
		String[] chk = request.getParameterValues("chk");
		int[] chks = Arrays.stream(chk).mapToInt(Integer::parseInt).toArray();
		
		for (int i = 0; i < chks.length; i++) {
			System.out.println(chks[i]);
		}

		
		
	}

}
