package DAODTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.catalina.connector.Request;

public class DAO_component {
	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	DTO_SUPP dto_supp = null;
	DTO_COMP dto_comp = null;
	DTO_component dto_component = null;
	ArrayList<DTO_SUPP> arr_supp = new ArrayList<DTO_SUPP>();
	ArrayList<DTO_component> arr_comp = new ArrayList<DTO_component>();
	
	
	// DB연결
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@59.3.122.193:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// DB연결해지
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			psmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// ===============================================================	
	// component 테이블 효능 조회 
		public ArrayList<DTO_component> component_view(String comp) {

			try {
				conn();
				arr_comp = new ArrayList<DTO_component>();
				String sql = "select * from component where component = ?";

				psmt = conn.prepareStatement(sql);

				psmt.setString(1, comp);

				rs = psmt.executeQuery();
				cnt=0;
				while(rs.next()) {
					String component = rs.getString("component");
					String effect = rs.getString("effect");
					String side_effect = rs.getString("side_effect");
					String together_eat = rs.getString("together_eat");

					dto_component = new DTO_component(component,effect,side_effect,together_eat);
					arr_comp.add(cnt, dto_component);
				}
			} catch (Exception e) {
				System.out.println("조회실패");
				e.printStackTrace();
			} finally {
				close();
			}
			return arr_comp;
		}
		
		// ===============================================================	
		// component 테이블 효능 조회 
			public ArrayList<DTO_component> component_search(String comp) {

				try {
					conn();
					arr_comp = new ArrayList<DTO_component>();
					String sql = "select * from component where component like '%" +comp+ "%'";

					psmt = conn.prepareStatement(sql);

					rs = psmt.executeQuery();
					
					cnt=0;
					
					if(rs.next()){

						String component = rs.getString("component");
						String effect = rs.getString("effect");
						String side_effect = rs.getString("side_effect");
						String together_eat = rs.getString("together_eat");
						dto_component = new DTO_component(component,effect,side_effect,together_eat);
						arr_comp.add(cnt, dto_component);
					}
				} catch (Exception e) {
					System.out.println("조회실패");
					e.printStackTrace();
				} finally {
					close();
				}
				return arr_comp;
			}
}
