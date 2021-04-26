package pt.agilefactor.truly.docs.model;
public class User {
	protected String name;
	public User() {
	}
	public User(String name) {
		super();
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}