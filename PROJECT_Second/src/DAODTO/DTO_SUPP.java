package DAODTO;

public class DTO_SUPP {
	
	
	//supplement table
	
	private String sp_name;			//제품명
	private String brand;			//브랜드
	private String rda;				//유통기간
	private String instruction;		//복용법
	private String effect;			//효능
	private String component;		//성분
	private int model;				//모델명
	//img 추가 예정
	
	
	public DTO_SUPP(String sp_name, String brand, String rda, String instruction, String effect, String component,
			int model) {
		this.sp_name = sp_name;
		this.brand = brand;
		this.rda = rda;
		this.instruction = instruction;
		this.effect = effect;
		this.component = component;
		this.model = model;
	}
	
	public DTO_SUPP(String sp_name) {
		this.sp_name = sp_name;
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

	public int getModel() {
		return model;
	}

	public void setModel(int model) {
		this.model = model;
	}


	
	
	

}
