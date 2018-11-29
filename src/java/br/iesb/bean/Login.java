package br.iesb.bean;

public class Login {
 
    private String nome;
    private String senha;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public boolean validate(){  
        if(senha.equals("123")){  
            return true;  
        }  
        else{  
            return false;  
        }
    }
}
