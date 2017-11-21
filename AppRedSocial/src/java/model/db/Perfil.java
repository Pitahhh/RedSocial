package model.db;

public class Perfil {
    private int id;
    private String descripcion;
    private int fk_Usuario;

    public Perfil() {
    }

    public Perfil(int id, String descripcion, int fk_Usuario) {
        this.id = id;
        this.descripcion = descripcion;
        this.fk_Usuario = fk_Usuario;
    }

    public Perfil(String descripcion, int fk_Usuario) {
        this.descripcion = descripcion;
        this.fk_Usuario = fk_Usuario;
    }
    
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getFk_Usuario() {
        return fk_Usuario;
    }

    public void setFk_Usuario(int fk_Usuario) {
        this.fk_Usuario = fk_Usuario;
    }
    
    
}
