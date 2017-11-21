package model.db;

public class Perfil {
    private int id;
    private String descripcion;
    private int fk_Usuario;
    private int fk_Imagen;

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

    public int getFk_Imagen() {
        return fk_Imagen;
    }

    public void setFk_Imagen(int fk_Imagen) {
        this.fk_Imagen = fk_Imagen;
    }
    
    
}
