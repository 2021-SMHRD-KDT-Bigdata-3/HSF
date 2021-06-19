package DAODTO;

public class DTO_component {
	private String component;
	private String effect;
	private String side_effect;
	private String together_eat;
	public String getComponent() {
		return component;
	}
	public String getEffect() {
		return effect;
	}
	public String getSide_effect() {
		return side_effect;
	}
	public String getTogether_eat() {
		return together_eat;
	}
	public DTO_component(String component, String effect, String side_effect, String together_eat) {
		super();
		this.component = component;
		this.effect = effect;
		this.side_effect = side_effect;
		this.together_eat = together_eat;
	}
}
