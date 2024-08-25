package br.com.fatec.controler;

import br.com.fatec.bean.Usuario;
import br.com.fatec.modelo.UsuarioDao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioController {
    UsuarioDao usuDao;
    
    public UsuarioController() throws SQLException, ClassNotFoundException{
        this.usuDao = new UsuarioDao();
    }
    
    public Usuario inseriUsuario(Usuario usu) throws SQLException, ClassNotFoundException {    
        usuDao.inseri(usu);
        return usu;
    }

    public Usuario alteraUsuario(Usuario usu) throws SQLException {
        usuDao.altera(usu);
        return usu;
    }
    
    public Usuario excluiUsuario(Usuario usu) throws SQLException {
        usuDao.exclui(usu);
        return usu;
    }

    public List<Usuario> listaUsuario(Usuario usu) throws SQLException {
        List<Usuario> usus = new ArrayList();
        usus = usuDao.lista(usu);
        return usus;
    }

    public Usuario buscaUsuario(Usuario usu) throws SQLException, ClassNotFoundException {
        UsuarioDao usuDao = new UsuarioDao();
        usu = usuDao.busca(usu);
        return usu;
    }

    public Usuario validaUsuario(Usuario usu) throws ClassNotFoundException, SQLException  {
        UsuarioDao usuDao = new UsuarioDao();
        usu = usuDao.validaLogin(usu);
        return usu;
    }
}
