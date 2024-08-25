package br.com.fatec.modelo;

import br.com.fatec.bean.Colaborador;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ColaboradorDao {
    
    private final Connection c ;
    
    //DEFININDO CONSTRUTOR DA CLASSE    
    public ColaboradorDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    //MÉTODO DE INSERÇÃO NO BANCO
    public Colaborador inseri(Colaborador col) throws SQLException{
        String sql = "insert into colaborador" + " (nome, tipo)" + " values (?,?)";

        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,col.getNome());
        stmt.setString(2,col.getTipo());

        // executa
        stmt.execute();
        stmt.close();
        return col;
    }    
    
    //MÉTODO DE BUSCA NO BANCO
    public Colaborador busca(Colaborador col) throws SQLException{
        String sql = "select * from colaborador WHERE id = ?";
        
        // seta os valores
        try ( // prepared statement para inserção
             PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,col.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                col.setId(rs.getInt(1));
                col.setNome(rs.getString(2));
                col.setTipo(rs.getString(3));
            }
        }
        return col;
    }
    
    public List<Colaborador> lista(Colaborador c1) throws SQLException{
         // usus: array armazena a lista de registros

        List<Colaborador> colas = new ArrayList<Colaborador>();
        
        String sql = "select * from colaborador where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + c1.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Colaborador cb = new Colaborador();
            cb.setId(rs.getInt(1));
            cb.setNome(rs.getString(2));
            cb.setTipo(rs.getString(3));
            // adiciona o usu à lista de usus
            colas.add(cb);
        }        
        rs.close();
        stmt.close();
        return colas;        
    }
    
    public List<Colaborador> lista() throws SQLException{
         // usus: array armazena a lista de registros

        List<Colaborador> colas = new ArrayList<>();
        
        String sql = "select * from colaborador";
        try (PreparedStatement stmt = this.c.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                // criando o objeto Colaborador
                Colaborador cb = new Colaborador();
                cb.setId(rs.getInt(1));
                cb.setNome(rs.getString(2));
                cb.setTipo(rs.getString(3));
                // adiciona o usu à lista de usus
                colas.add(cb);
            }            
        }
        return colas;        
    }
        
    public Colaborador exclui(Colaborador cb) throws SQLException{
        String sql = "delete from colaborador WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,cb.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return cb;
    }
    
    public Colaborador altera(Colaborador cb) throws SQLException{
        String sql = "UPDATE colaborador SET nome = ?, tipo = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,cb.getNome());
        stmt.setString(2,cb.getTipo());
        stmt.setInt(3,cb.getId());

        // executa
        stmt.execute();
        stmt.close();
        return cb;
    }        
}
