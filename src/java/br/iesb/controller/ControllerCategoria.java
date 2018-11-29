package br.iesb.controller;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import br.iesb.bean.Categoria;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ControllerCategoria{
    
    public ControllerCategoria(){
        
    }
    //INSERIR DADOS NO BANCO DE DADOS
    public boolean inserir (Categoria categoria){
        String sql = "INSERT INTO categorias (nome, categorias_id)"
                + "values(?,?)";
        boolean retorno = false;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try{
            pst.setString(1, categoria.getNome());
            pst.setString(2, categoria.getCategorias_id());
        
            if(pst.executeUpdate()==0){
                retorno = false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCategoria.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
    }
    //ALTERAR DADOS DO BANCO DE DADOS
    public boolean atualizar (Categoria categoria){
       
        String sql = "UPDATE categorias set nome=? WHERE id=?";
        boolean retorno = false;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try{
            pst.setString(1, categoria.getNome());
            pst.setString(2, categoria.getId());
        
            if(pst.executeUpdate()==0){
                retorno = true;
            }
          
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCategoria.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
    }
        //EXCLUIR DADOS NO BANCO DE DADOS
        public boolean excluir (Categoria categoria){
        String sql = "DELETE FROM categorias WHERE id=?";
        boolean retorno = true;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try{
            pst.setString(1, categoria.getId());
        
            if(pst.executeUpdate()==0){
                retorno = false;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCardapio.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
    }
    //LISTA DADOS DO BANCO DE DADOS
    public List<Categoria> Listar(){
        String sql = "SELECT * FROM categorias;";
        List<Categoria> retorno = new ArrayList<>();
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        
        try{
            
            ResultSet res = pst.executeQuery();
            while(res.next()){
                Categoria item = new Categoria();
                item.setId(res.getString("id"));
                item.setNome(res.getString("nome"));
                item.setCategorias_id(res.getString("categorias_id"));
                
                retorno.add(item);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
    }
    
        //BUSCAR DADOS DO BANCO DE DADOS
    public Categoria Buscar(Categoria categoria){
        String sql = "SELECT * FROM categorias where id=?";
        Categoria retorno = null;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        
        try{
            
            pst.setString(1, categoria.getId());
            ResultSet res = pst.executeQuery();
            if(res.next()){
                retorno = new Categoria();
                retorno.setId(res.getString("id"));
                retorno.setNome(res.getString("nome"));
                retorno.setCategorias_id(res.getString("categorias_id"));
                
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCategoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
    }
    
}