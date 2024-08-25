package br.com.fatec.controler;

import br.com.fatec.bean.Contato;
import br.com.fatec.modelo.ContatoDao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContatoController {
    
    public Contato inseriContato(Contato cont) throws SQLException, ClassNotFoundException {    
        ContatoDao contDao = new ContatoDao();
        contDao.inseri(cont);
        return cont;
    }

    public Contato alteraContato(Contato cont) throws SQLException, ClassNotFoundException {
        ContatoDao contDao = new ContatoDao();
        contDao.altera(cont);    
        return cont;
    }
    
    public Contato excluiContato(Contato cont) throws SQLException, ClassNotFoundException {
        ContatoDao contDao = new ContatoDao();
        contDao.exclui(cont);    
        return cont;
    }

    public List<Contato> listaContato(Contato cont) throws SQLException, ClassNotFoundException {
        ContatoDao cDao = new ContatoDao();
        List<Contato> conts = new ArrayList();
        conts = cDao.lista(cont);
        return conts;
    }

    public List<Contato> listaContato() throws SQLException, ClassNotFoundException {
        ContatoDao cDao = new ContatoDao();
        List<Contato> conts = new ArrayList();
        conts = cDao.lista();
        return conts;
    }

    public Contato buscaContato(Contato cont) throws SQLException, ClassNotFoundException {
        ContatoDao cDao = new ContatoDao();
        List<Contato> conts = new ArrayList();
        cont = cDao.busca(cont);
        return cont;
    }    
}
