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

	// DB�� ����
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

	// DB ��������
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

	// ��ǰ�� -> ����(ȿ��)

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
			System.out.println("��ȸ ����");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

//-----------------------------------------------------------------------------------------

	// ��õ���� Ŭ�� -> ����/ȿ��, �Ϸ���差, ���ۿ�, �Բ� �����ϸ� ���� ����(���� ��� ��ǰ�� ������)�� �˷������

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
			System.out.println("��ȸ ����");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

//-----------------------------------------------------------------------------------
	// ������ȸ Ŭ�� -> ȿ��, �Ϸ���差, ���ۿ�, �Բ� �����ϸ� ���� ����
	// ����DB�� -> �����ϱ�

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
//			System.out.println("��ȸ ����");
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return dto;
//	}
}
