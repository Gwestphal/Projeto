package br.iesb.bean;

public class Cardapio {

    private String id;
    private String nome;
    private String codigo;
    private String descricao;
    private String qtd;
    private String preco_compra;
    private String preco_venda;
    private String categorias_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getQtd() {
        return qtd;
    }

    public void setQtd(String qtd) {
        this.qtd = qtd;
    }

    public String getPreco_compra() {
        return preco_compra;
    }

    public void setPreco_compra(String preco_compra) {
        this.preco_compra = preco_compra;
    }

    public String getPreco_venda() {
        return preco_venda;
    }

    public void setPreco_venda(String preco_venda) {
        this.preco_venda = preco_venda;
    }

    public String getCategorias_id() {
        return categorias_id;
    }

    public void setCategorias_id(String categorias_id) {
        this.categorias_id = categorias_id;
    }
    
    
}
