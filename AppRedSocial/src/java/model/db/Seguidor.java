package model.db;

public class Seguidor {
    
    private int fk_UsuarioSeguido;
    private int fk_UsuarioSeguidor;

    public Seguidor() {
    }

    public Seguidor(int fk_UsuarioSeguido, int fk_UsuarioSeguidor) {
        this.fk_UsuarioSeguido = fk_UsuarioSeguido;
        this.fk_UsuarioSeguidor = fk_UsuarioSeguidor;
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
