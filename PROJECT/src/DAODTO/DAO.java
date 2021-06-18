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

	// DB연결
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
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

	// 제품 -> 설명
	public DTO_SUPP supplement_view(String sp_name) {

		try {
			conn();

			String sql = "select sp_name, rda, instruction, effect, component from supplement where sp_name = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, sp_name);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_rda = rs.getString("rda");
				String get_instruction = rs.getString("instruction");
				String get_effect = rs.getString("effect");
				String get_component = rs.getString("component");

				dto_supp = new DTO_SUPP(get_sp_name, get_rda, get_instruction, get_effect, get_component);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_supp;
	}

//-----------------------------------------------------------------------------------------

	// 제품 -> 설명 (가데이터)
	public DTO_SUPP recom_comp(String component) {

		try {
			conn();

			String sql = "select sp_name, instruction, effect from supp_test where component = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, component);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_instruction = rs.getString("instruction");
				String get_effect = rs.getString("effect");

				dto_supp = new DTO_SUPP(get_sp_name, get_instruction, get_effect);
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
	
	// 성분 -> 설명 (가데이터)
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
