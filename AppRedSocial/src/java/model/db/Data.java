package model.db;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.Icon;

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
    
    public List<Imagen> getImagen(Usuario user) throws SQLException{
        List<Imagen> lista = new ArrayList<>();
        FileOutputStream fos = null;
        query = "SELECT * FROM IMAGEN WHERE fk_Usuario ="+user.getId();
        rs = con.ejecutarSelect(query);
        Imagen img;
        
        while(rs.next()){
            img = new Imagen();
            
            img.setId(rs.getInt(1));
            img.setImagen((Icon) rs.getBinaryStream(2));
            img.setDescripcion(rs.getString(3));
            img.setFk_usuario(rs.getInt(4));
            
            lista.add(img);
        }
        con.close();
        return lista;
    }
    
    public void crearUsuario(Usuario u) throws SQLException {
        query = "insert into usuario value(null,'" + u.getNombre() + "','" + u.getEmail() + "'," + u.getPass() + ")";

        con.ejecutar(query);
    }
    
    public Usuario getUsuario(String nombre) throws SQLException {
        Usuario u = null;

        rs = con.ejecutarSelect("SELECT * FROM usuario WHERE rut = '" + nombre + "'");

        //rs = con.ejecutarSelect("SELECT * FROM usuario WHERE rut = '" + rut + "'");
        if (rs.next()) {
            u = new Usuario();

            u.setId(rs.getInt(1));
            u.setNombre(rs.getString(2));
            u.setEmail(rs.getString(3));
            u.setPass(rs.getString(4));
            
        }

        con.close();

        return u;
    }
    
    public Seguidor getFollows(int id) throws SQLException{
        
        Seguidor s = new Seguidor(getSeguidos(id), getSeguidores(id));
        
        return s;
    }
    
    
    //No llamar a estos metodos, llamar al getFollows
    public int getSeguidos(int id) throws SQLException{
        int seguidos = 0;
        Seguidor s;
        query = "select count(id) from seguidores where fk_UsuarioSeguido="+id;
        rs = con.ejecutarSelect(query);
        if(rs.next()){
            s = new Seguidor();
            s.setFk_UsuarioSeguido(rs.getInt(1));
            seguidos = s.getFk_UsuarioSeguido();
        }
        return seguidos;
    }
    
    public int getSeguidores(int id) throws SQLException{
        int seguidores = 0;
        Seguidor s;
        query = "select count(id) from seguidores where fk_UsuarioSeguidor="+id;
        rs = con.ejecutarSelect(query);
        if(rs.next()){
            s = new Seguidor();
            s.setFk_UsuarioSeguidor(rs.getInt(1));
            seguidores = s.getFk_UsuarioSeguidor();
        }
        return seguidores;
    }
}
