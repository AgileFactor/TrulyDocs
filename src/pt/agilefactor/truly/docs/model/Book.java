package pt.agilefactor.truly.docs.model;

public class Book {
    protected int id;
    protected String name;
 
    public Book() {
    }
 
    public Book(int id) {
        this.id = id;
    }
 
    public Book(int id, String name) {
        this(name);
        this.id = id;
    }
     
    public Book(String name) {
        this.name = name;
    }
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getname() {
        return name;
    }
 
    public void setname(String name) {
        this.name = name;
    }
}