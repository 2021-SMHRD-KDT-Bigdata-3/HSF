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
	DTO_MEMBER dto_member = null;
	DTO_GEN_COMP dto_gen_comp = null;
	ArrayList<DTO_SUPP> arr_supp = new ArrayList<DTO_SUPP>();
	ArrayList<DTO_MEMBER> arr_comment = new ArrayList<DTO_MEMBER>();
	ArrayList<DTO_GEN_COMP> arr_gen_comp = new ArrayList<DTO_GEN_COMP>();
	
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
			while (rs.next()) {
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

	// -------------------------------------------------------------------------------------------------------------------

	// (제품조회) model -> 제품
	public ArrayList<DTO_SUPP> suppleimg_view(String component) {

		try {
			conn();

			String sql = "select * from supplement where component like '%" + component + "%'";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_brand = rs.getString("brand");
				String get_rda = rs.getString("rda");
				String get_instruction = rs.getString("instruction");
				String get_effect = rs.getString("effect");
				String get_component = rs.getString("component");
				String get_img = rs.getString("img");

				dto_supp = new DTO_SUPP(get_sp_name, get_brand, get_rda, get_instruction, get_effect, get_component,
						get_img);
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
			if (rs.next()) {
				String get_sp_name = rs.getString("sp_name");
				String get_brand = rs.getString("brand");
				String get_rda = rs.getString("rda");
				String get_instruction = rs.getString("instruction");
				String get_effect = rs.getString("effect");
				String get_component = rs.getString("component");
				String get_img = rs.getString("img");

				dto_supp = new DTO_SUPP(get_sp_name, get_brand, get_rda, get_instruction, get_effect, get_component,
						get_img);
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

	// -----------------------------------------------------------------------------------

	// (성분조회) 증상체크 -> 성분리턴 증상별 성분 조회하기 위한 메서드
	// page.1 에서 form 태그 통해 보낸 값을 selectList 파일에서 조회, 해당 메서드는 이 파일에서 사용한다.
	public DTO_COMP statecomp_view(String state) {

		try {
			conn();

			String sql = "select * from comp_test where state = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, state);
			rs = psmt.executeQuery();
			if (rs.next()) {
				String state_c = rs.getString("state");
				String get_component = rs.getString("component");
				dto_comp = new DTO_COMP(state_c, get_component);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto_comp;
	}
//-----------------------------------------------------------------------------------------------

	// 댓글기능 - 조회
	public ArrayList<DTO_MEMBER> comment_view(String supp) {

		try {
			conn();

			String sql = "select memb_id, comments, supp_name from memb_comment where supp_name= ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, supp);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_id = rs.getString("memb_id");
				String get_comment = rs.getString("comments");
				String get_supp_name = rs.getString("supp_name");
				dto_member = new DTO_MEMBER(get_id, get_comment, get_supp_name);
				arr_comment.add(dto_member);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return arr_comment;
	}

//------------------------------------------------------------------------------------------------		

	// 댓글기능 - insert
	public int comment_insert(String memb_id, String comments, String memb_pw, String supp_name) {

		try {
			conn();

			String sql = "insert into memb_comment values (comment_seq.nextval,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, memb_id);
			psmt.setString(2, comments);
			psmt.setString(3, memb_pw);
			psmt.setString(4, supp_name);
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
//-------------------------------------------------------------------------------------------------	
	
	//성분을 불러와
	public ArrayList<DTO_GEN_COMP> gen_comp_view() {

		try {
			conn();

			String sql = "select * from gen_age_comp";

			psmt = conn.prepareStatement(sql);

			//psmt.setInt(1, model);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String get_age = rs.getString("age");
				String get_danbek = rs.getString("danbek");
				String get_subun = rs.getString("subun");
				String get_sigi = rs.getString("sigi");
				String get_bc = rs.getString("bc");
				String get_tiamin = rs.getString("tiamin");
				String get_libopla = rs.getString("libopla");
				String get_niasin = rs.getString("niasin");
				String get_b6 = rs.getString("b6");
				String get_yapsan = rs.getString("yapsan");
				String get_b12 = rs.getString("b12");
				String get_panto = rs.getString("panto");
				String get_biotin = rs.getString("biotin");
				String get_ba = rs.getString("ba");
				String get_bd = rs.getString("bd");
				String get_be = rs.getString("be");
				String get_bk = rs.getString("bk");
				String get_calsum = rs.getString("calsum");
				String get_inin = rs.getString("inin");
				String get_natrume = rs.getString("natrume");

				dto_gen_comp = new DTO_GEN_COMP(get_age, get_danbek, get_subun, get_sigi, get_bc, get_tiamin, get_libopla, get_niasin, get_b6, get_yapsan, get_b12, get_panto, get_biotin, get_ba, get_bd, get_be, get_bk, get_calsum, get_inin, get_natrume);
				arr_gen_comp.add(dto_gen_comp);
			}
		} catch (Exception e) {
			System.out.println("조회실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return arr_gen_comp;
	}
	
	
	
	
	
	
}