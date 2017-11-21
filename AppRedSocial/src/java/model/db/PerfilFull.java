package model.db;

import java.awt.Image;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import javax.swing.Icon;
import javax.swing.ImageIcon;


public class PerfilFull {
    private int id;
    private String descripcion;
    private ImageIcon imagen;

    public PerfilFull(String descripcion, ImageIcon imagen) {
        this.descripcion = descripcion;
        this.imagen = imagen;
    }

    public PerfilFull() {
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

    public ImageIcon getImagen() {
        
        return imagen;
    }

    public void setImagen(ImageIcon imagen) {
        this.imagen = imagen;
    }

    

    
    
    
    
}
