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
	DTO dto = null;
	ArrayList<DTO> arr = new ArrayList<DTO>();

	// DB와 연결
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

	// DB 연결해제
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

	// 제품명 -> 설명(효능)

	public DTO recom_sp(String sp_name) {

		try {
			conn();

			String sql = "select sp_name, effect where sp_name = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, sp_name);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_effect = rs.getString("effect");

				dto = new DTO(get_sp_name, get_effect);
			}
		} catch (Exception e) {
			System.out.println("조회 실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

//-----------------------------------------------------------------------------------------

	// 추천성분 클릭 -> 설명/효능, 하루권장량, 부작용, 함께 복용하면 좋은 성분(아직 없어서 제품명 보여줌)을 알려줘야함

	public DTO recom_comp(String component) {

		try {
			conn();

			String sql = "select sp_name, instruction, effect, sp_side from supp_test where component = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, component);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_instruction = rs.getString("instruction");
				String get_effect = rs.getString("effect");
				String get_sp_side = rs.getString("sp_side");

				dto = new DTO(get_sp_name, get_instruction, get_effect, get_sp_side);
			}
		} catch (Exception e) {
			System.out.println("조회 실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

//-----------------------------------------------------------------------------------
	// 성분조회 클릭 -> 효능, 하루권장량, 부작용, 함께 복용하면 좋은 성분
	// 실제DB용 -> 수정하기

//	public DTO comp(String component) {
//
//		try {
//			conn();
//
//			String sql = "select sp_name, instruction, effect, sp_side from supp_test where component = ?";
//
//			psmt = conn.prepareStatement(sql);
//
//			psmt.setString(1, component);
//
//			rs = psmt.executeQuery();
//			while (rs.next()) {
//				String get_sp_name = rs.getString("sp_name");
//				String get_instruction = rs.getString("instruction");
//				String get_effect = rs.getString("effect");
//				String get_sp_side = rs.getString("sp_side");
//
//				dto = new DTO(get_sp_name, get_instruction, get_effect, get_sp_side);
//			}
//		} catch (Exception e) {
//			System.out.println("조회 실패");
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return dto;
//	}
}
