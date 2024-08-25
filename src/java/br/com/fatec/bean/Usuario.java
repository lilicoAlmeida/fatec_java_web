package br.com.fatec.bean;

public class Usuario extends Pessoa {
    
    //ATRIBUTOS
    protected String login;
    protected String senha;
    protected String status;
    protected String tipo;

    //GETTERS E SETTERS
    public String getLogin() {
        return login;
    }
    public void setLogin(String login) {
        this.login = login;
    }
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getTipo() {
        return tipo;
    }
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}
