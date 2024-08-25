package br.com.fatec.controler;

import br.com.fatec.bean.Colaborador;
import br.com.fatec.modelo.ColaboradorDao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ColaboradorController {    
    
    public Colaborador inseriColaborador(Colaborador col) throws SQLException, ClassNotFoundException {    
        ColaboradorDao coDao = new ColaboradorDao();
        col = coDao.inseri(col);
        return col;
    }
    
    public Colaborador alteraColaborador(Colaborador cb) throws SQLException, ClassNotFoundException {
        ColaboradorDao coDao = new ColaboradorDao();
        coDao.altera(cb);
        return cb;
    }
    
    public Colaborador excluiColaborador(Colaborador cb) throws SQLException, ClassNotFoundException {
        ColaboradorDao coDao = new ColaboradorDao();
        coDao.exclui(cb);
        return cb;
    }

    public List<Colaborador> listaColaborador(Colaborador cb) throws SQLException, ClassNotFoundException {
        ColaboradorDao coDao = new ColaboradorDao();        
        List<Colaborador> cola = new ArrayList();
        cola = coDao.lista(cb);
        return cola;
    }

    public List<Colaborador> listaColaborador() throws SQLException, ClassNotFoundException {
        ColaboradorDao coDao = new ColaboradorDao();        
        List<Colaborador> cola = new ArrayList();
        cola = coDao.lista();
        return cola;
    }    
    
    public Colaborador buscaColaborador(Colaborador cb) throws SQLException, ClassNotFoundException {
        ColaboradorDao coDao = new ColaboradorDao();
        cb = coDao.busca(cb);
        return cb;
    }            
}
