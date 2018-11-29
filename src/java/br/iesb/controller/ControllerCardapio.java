package br.iesb.controller;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import br.iesb.bean.Cardapio;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ControllerCardapio{

    //INSERIR DADOS NO BANCO DE DADOS
    public boolean inserir (Cardapio cardapio){
        String sql = "INSERT INTO cardapios (nome, codigo, descricao, qtd, preco_compra, preco_venda, categorias_id)"
                + "values(?,?,?,?,?,?,?)";
        boolean retorno = false;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try{
            pst.setString(1, cardapio.getNome());
            pst.setString(2, cardapio.getCodigo());
            pst.setString(3, cardapio.getDescricao());
            pst.setString(4, cardapio.getQtd());
            pst.setString(5, cardapio.getPreco_compra());
            pst.setString(6, cardapio.getPreco_venda());
            pst.setString(7, cardapio.getCategorias_id());
        
            if(pst.executeUpdate()==0){
                retorno = true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCardapio.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
    }
    //ALTERAR DADOS DO BANCO DE DADOS
    public boolean atualizar (Cardapio cardapio){
       
        String sql = "UPDATE cardapios set nome=?, codigo=?, descricao=?, qtd=?, preco_compra=?, preco_venda=?, categorias_id=? WHERE id=?";
        boolean retorno = false;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try{
            pst.setString(1, cardapio.getNome());
            pst.setString(2, cardapio.getCodigo());
            pst.setString(3, cardapio.getDescricao());
            pst.setString(4, cardapio.getQtd());
            pst.setString(5, cardapio.getPreco_compra());
            pst.setString(6, cardapio.getPreco_venda());
            pst.setString(7, cardapio.getCategorias_id());
            pst.setString(8, cardapio.getId());
        
            if(pst.executeUpdate()==0){
                retorno = true;
            }
          
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCardapio.class.getName()).log(Level.SEVERE, null, ex);
            retorno = false;
        }
        return retorno;
    }
    
    //EXCLUIR DADOS DO BANCO DE DADOS
    public boolean excluir (Cardapio cardapio){
        String sql = "DELETE FROM cardapios WHERE id=?";
        boolean retorno = true;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        try{
            pst.setString(1, cardapio.getId());
        
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
    public List<Cardapio> Listar(){
        String sql = "SELECT * FROM cardapios;";
        List<Cardapio> retorno = new ArrayList<>();
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        
        try{
            
            ResultSet res = pst.executeQuery();
            while(res.next()){
                Cardapio item = new Cardapio();
                item.setId(res.getString("id"));
                item.setNome(res.getString("nome"));
                item.setCodigo(res.getString("codigo"));
                item.setDescricao(res.getString("descricao"));
                item.setQtd(res.getString("qtd"));
                item.setPreco_compra(res.getString("preco_compra"));
                item.setPreco_venda(res.getString("preco_venda"));
                item.setCategorias_id(res.getString("categorias_id"));
                
                retorno.add(item);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCardapio.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
    }
    //BUSCAR DADOS DO BANCO DE DADOS
    public Cardapio Buscar(Cardapio cardapio){
        String sql = "SELECT * FROM cardapios where id=?";
        Cardapio retorno = null;
        PreparedStatement pst = Conexao.getPreparedStatement(sql);
        
        try{
            
            pst.setString(1, cardapio.getId());
            ResultSet res = pst.executeQuery();
            if(res.next()){
                retorno = new Cardapio();
                retorno.setId(res.getString("id"));
                retorno.setNome(res.getString("nome"));
                retorno.setCodigo(res.getString("codigo"));
                retorno.setDescricao(res.getString("descricao"));
                retorno.setQtd(res.getString("qtd"));
                retorno.setPreco_compra(res.getString("preco_compra"));
                retorno.setPreco_venda(res.getString("preco_venda"));
                retorno.setCategorias_id(res.getString("categorias_id"));
                
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ControllerCardapio.class.getName()).log(Level.SEVERE, null, ex);
        }
        return retorno;
    }
    
}