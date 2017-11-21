package model.db;

public class Seguidor {
    private int id;
    private int fk_UsuarioSeguido;
    private int fk_UsuarioSeguidor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFk_UsuarioSeguido() {
        return fk_UsuarioSeguido;
    }

    public void setFk_UsuarioSeguido(int fk_UsuarioSeguido) {
        this.fk_UsuarioSeguido = fk_UsuarioSeguido;
    }

    public int getFk_UsuarioSeguidor() {
        return fk_UsuarioSeguidor;
    }

    public void setFk_UsuarioSeguidor(int fk_UsuarioSeguidor) {
        this.fk_UsuarioSeguidor = fk_UsuarioSeguidor;
    }
    
}
