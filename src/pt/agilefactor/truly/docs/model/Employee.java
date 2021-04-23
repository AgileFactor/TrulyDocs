package pt.agilefactor.truly.docs.model;
import java.io.Serializable;
public class Employee implements Serializable {
    private static final long serialVersionUID = 1L;
    protected String name;
    public Employee() {
	}
    public Employee(String name) {
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