package DAODTO;

public class DTO_SUPP {
	
	
	//supplement table
	
	private String sp_name;			//제품명
	private String brand;			//브랜드
	private String rda;				//유통기간
	private String instruction;		//복용법
	private String effect;			//효능
	private String component;		//성분
	private int age;				//나이
	
	//model, img 추가


	public DTO_SUPP(String sp_name, String brand, String rda, String instruction, String effect, String component, int age) {
		this.sp_name = sp_name;
		this.brand = brand;
		this.rda = rda;
		this.instruction = instruction;
		this.effect = effect;
		this.component = component;
		this.age = age;
	}


	public DTO_SUPP(String sp_name, String instruction, String effect) {
		this.sp_name = sp_name;
		this.instruction = instruction;
		this.effect = effect;
	}


	public DTO_SUPP(String sp_name, String rda, String instruction, String effect, String component) {
		this.sp_name = sp_name;
		this.rda = rda;
		this.instruction = instruction;
		this.effect = effect;
		this.component = component;
	}


	public DTO_SUPP(String sp_name, String effect) {
		this.sp_name = sp_name;
		this.effect = effect;
	}


	public String getSp_name() {
		return sp_name;
	}


	public void setSp_name(String sp_name) {
		this.sp_name = sp_name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
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
