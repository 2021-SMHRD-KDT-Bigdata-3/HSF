package DAODTO;

public class DTO_MEMBER {

	private String memb_id;
	private String comments;
	private String memb_pw;
	private String supp_name;
	
	public DTO_MEMBER(String memb_id, String comments, String memb_pw, String supp_name) {
		this.memb_id = memb_id;
		this.comments = comments;
		this.memb_pw = memb_pw;
		this.supp_name = supp_name;
	}

	public DTO_MEMBER(String memb_id, String comments, String supp_name) {
		this.memb_id = memb_id;
		this.comments = comments;
		this.supp_name = supp_name;
	}

	public String getSupp_name() {
		return supp_name;
	}

	public void setSupp_name(String supp_name) {
		this.supp_name = supp_name;
	}

	public String getMemb_id() {
		return memb_id;
	}

	public void setMemb_id(String memb_id) {
		this.memb_id = memb_id;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getMemb_pw() {
		return memb_pw;
	}

	public void setMemb_pw(String memb_pw) {
		this.memb_pw = memb_pw;
	}
	
	
	
	
}	