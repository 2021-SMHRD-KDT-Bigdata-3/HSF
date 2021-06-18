package DAODTO;

public class DTO {
	
	private String sp_name;			//제품명
	private String brand;			//회사
	private String rda;				//유통기한
	private String instruction;		//복용법
	private String effect;			//효능
	private String component;		//성분
	private String sp_side;			//부작용
	

	public DTO(String sp_name, String brand, String rda, String instruction, String effect, String component,
			String sp_side) {
		this.sp_name = sp_name;
		this.brand = brand;
		this.rda = rda;
		this.instruction = instruction;
		this.effect = effect;
		this.component = component;
		this.sp_side = sp_side;
	}


	public DTO(String sp_name, String instruction, String effect, String sp_side) {
		this.sp_name = sp_name;
		this.instruction = instruction;
		this.effect = effect;
		this.sp_side = sp_side;
	}


	public DTO(String sp_name, String effect) {
		this.sp_name = sp_name;
		this.effect = effect;
	}


	public String getSp_side() {
		return sp_side;
	}


	public void setSp_side(String sp_side) {
		this.sp_side = sp_side;
	}


	public String getSp_name() {
		return sp_name;
	}


	public void setSp_name(String sp_name) {
		this.sp_name = sp_name;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getRda() {
		return rda;
	}


	public void setRda(String rda) {
		this.rda = rda;
	}


	public String getInstruction() {
		return instruction;
	}


	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}


	public String getEffect() {
		return effect;
	}


	public void setEffect(String effect) {
		this.effect = effect;
	}


	public String getComponent() {
		return component;
	}


	public void setComponent(String component) {
		this.component = component;
	}
	
	
	
	

}
