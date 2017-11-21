package model.db;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Data {

    private Conexion con;
    private String query;
    private ResultSet rs;

    public Data() throws SQLException, ClassNotFoundException {

        con = new model.db.Conexion(
                "localhost",
                "BD_RedSocial",//nombre BD
                "root",
                ""//Password
        );
    }

    public void guardarImagen(Imagen img) {
        FileInputStream fis = null;
        try {
            File file = new File(img.getImagen().toString());//ruta de la imagen
            fis = new FileInputStream(file);

            PreparedStatement pstm = con.getConnection().prepareStatement("insert into "
                    + " imagen(imagen, descripcion, fk_Usuario) " + " values(?,?,?)");
            pstm.setBinaryStream(1, fis, (int) file.length());
            pstm.setString(2, img.getDescripcion());
            pstm.setInt(3, img.getFk_usuario());
            pstm.execute();
            pstm.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Imagen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            try {
                fis.close();
            } catch (IOException ex) {
                Logger.getLogger(Imagen.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    
}
