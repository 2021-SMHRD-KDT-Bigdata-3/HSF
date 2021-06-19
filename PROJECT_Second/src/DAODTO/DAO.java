package DAODTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {

	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	DTO_SUPP dto_supp = null;
	DTO_COMP dto_comp = null;
	ArrayList<DTO_SUPP> arr_supp = new ArrayList<DTO_SUPP>();
	//ArrayList<DTO_SUPP> arr_supp_one = new ArrayList<DTO_SUPP>();
	
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

//-------------------------------------------------------------------------------------------------------------------

	// (제품조회) model -> 제품 
	public ArrayList<DTO_SUPP> supplement_view(int model) {

		try {
			conn();

			String sql = "select sp_name, img from supplement where model = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, model);

			rs = psmt.executeQuery();
			while(rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_img = rs.getString("img");

				dto_supp = new DTO_SUPP(get_sp_name, get_img);
				arr_supp.add(dto_supp);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return arr_supp;
	}

//-----------------------------------------------------------------------------------------

	// 제품하나 -> 설명 
	public DTO_SUPP supp_view_one(String sp_name) {
		System.out.println(sp_name);
		try {
			conn();

			String sql = "select sp_name, brand, rda, instruction, effect, component, img from supplement where sp_name = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, sp_name);

			rs = psmt.executeQuery();
			if(rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_brand = rs.getString("brand");
				String get_rda = rs.getString("rda");
				String get_instruction = rs.getString("instruction");
				String get_effect = rs.getString("effect");
				String get_component = rs.getString("component");
				String get_img = rs.getString("img");

				dto_supp = new DTO_SUPP(get_sp_name, get_brand, get_rda, get_instruction, get_effect, get_component, get_img);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_supp;
	}

//-----------------------------------------------------------------------------------
	
	// (성분조회) 증상체크 -> 성분리턴 (가데이터)
	public DTO_COMP component_view(String state) {

		try {
			conn();

			String sql = "select component from comp_test where state in(?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, state);
			psmt.setString(2, state);
			psmt.setString(3, state);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_component = rs.getString("component");

				dto_comp = new DTO_COMP(get_component);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_comp;
	}
}