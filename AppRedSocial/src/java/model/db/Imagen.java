package model.db;

import javax.swing.Icon;

public class Imagen {
    
    private int id;
    private Icon imagen;
    private String descripcion;
    private int fk_usuario;

    public Imagen(Icon imagen, String descripcion, int fk_usuario) {
        this.imagen = imagen;
        this.descripcion = descripcion;
        this.fk_usuario = fk_usuario;
    }

    public Imagen(int id, Icon imagen, String descripcion, int fk_usuario) {
        this.id = id;
        this.imagen = imagen;
        this.descripcion = descripcion;
        this.fk_usuario = fk_usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Icon getImagen() {
        return imagen;
    }

    public void setImagen(Icon imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getFk_usuario() {
        return fk_usuario;
    }

    public void setFk_usuario(int fk_usuario) {
        this.fk_usuario = fk_usuario;
    }
    
    
    
}
