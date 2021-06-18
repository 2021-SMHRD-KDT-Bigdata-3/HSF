package DAODTO;

public class DTO_COMP {

	//component table
	private String state;
	private String component;
	
	public DTO_COMP(String state, String component) {
		this.state = state;
		this.component = component;
	}

	public DTO_COMP(String component) {
		super();
		this.component = component;
	}


	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getComponent() {
		return component;
	}

	public void setComponent(String component) {
		this.component = component;
	}
	
	
}
