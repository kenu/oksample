package net.okjsp.gmy;

public class User {
	private String name;
	private Integer choice;

	public User(String name, Integer choice) {
		this.name = name;
		this.choice = choice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getChoice() {
		return choice;
	}

	public void setChoice(Integer choice) {
		this.choice = choice;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", choice=" + choice + "]";
	}

}
