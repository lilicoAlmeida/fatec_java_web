package br.com.fatec.bean;

public class Contato extends Pessoa {
    
    //ATRIBUTOS
    protected String cpf;
    protected String rg;
    protected String end;

    //GETTERS E SETTERS
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getRg() {
        return rg;
    }
    public void setRg(String rg) {
        this.rg = rg;
    }
    public String getEnd() {
        return end;
    }
    public void setEnd(String end) {
        this.end = end;
    }
}
