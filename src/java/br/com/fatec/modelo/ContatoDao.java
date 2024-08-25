package br.com.fatec.modelo;

import br.com.fatec.bean.Contato;
import br.com.fatec.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContatoDao {
    
    private final Connection c;

    public ContatoDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Contato inseri(Contato cont) throws SQLException{
        String sql = "insert into contato" + " (nome, rg, cpf, endereco)" + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);

        // seta os valores
        stmt.setString(1,cont.getNome());
        stmt.setString(2,cont.getRg());
        stmt.setString(3,cont.getCpf());
        stmt.setString(4,cont.getEnd());

        // executa
        stmt.execute();
        stmt.close();
        return cont;
    }
    

    //MÉTODO DE BUSCA NO BANCO
    public Contato busca(Contato cont) throws SQLException{
        String sql = "select * from contato WHERE id = ?";
        
        // seta os valores
        try ( // prepared statement para inserção
             PreparedStatement stmt = this.c.prepareStatement(sql)) {
            // seta os valores
            stmt.setInt(1,cont.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                // criando o objeto Usuario
                cont.setId(rs.getInt(1));
                cont.setNome(rs.getString(2));
                cont.setRg(rs.getString(3));
                cont.setCpf(rs.getString(4));
                cont.setEnd(rs.getString(5));
            }
        }
        return cont;
    }
    
    public List<Contato> lista(Contato c1) throws SQLException{
         // usus: array armazena a lista de registros

        List<Contato> conta = new ArrayList<Contato>();
        
        String sql = "select * from contato where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + c1.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Contato cb = new Contato();
            cb.setId(rs.getInt(1));
            cb.setNome(rs.getString(2));
            cb.setRg(rs.getString(3));
            cb.setCpf(rs.getString(4));
            cb.setEnd(rs.getString(5));
            // adiciona o usu à lista de usus
            conta.add(cb);
        }        
        rs.close();
        stmt.close();
        return conta;
        
    }
    
    public List<Contato> lista() throws SQLException{
         // usus: array armazena a lista de registros

        List<Contato> contato = new ArrayList<>();
        
        String sql = "select * from contato";
        try (PreparedStatement stmt = this.c.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                // criando o objeto Colaborador
                Contato cont = new Contato();
                cont.setId(rs.getInt(1));
                cont.setNome(rs.getString(2));
                cont.setRg(rs.getString(3));
                cont.setCpf(rs.getString(4));
                cont.setEnd(rs.getString(5));                                
                // adiciona o usu à lista de usus
                contato.add(cont);
            }            
        }
        return contato;        
    }
        
    public Contato exclui(Contato ct) throws SQLException{
        String sql = "delete from contato WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,ct.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return ct;
    }
    
    public Contato altera(Contato ct) throws SQLException{
        String sql = "UPDATE contato SET nome = ?, rg = ?, cpf =?, endereco = ? WHERE id= ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,ct.getNome());
        stmt.setString(2,ct.getRg());
        stmt.setString(3,ct.getCpf());
        stmt.setString(4,ct.getEnd());
        stmt.setInt(5,ct.getId());

        // executa
        stmt.execute();
        stmt.close();
        return ct;
    }                      
}
