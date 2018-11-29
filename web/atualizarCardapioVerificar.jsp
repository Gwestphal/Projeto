<%@page import="br.iesb.controller.ControllerCardapio"%>
<%@page import="br.iesb.bean.Cardapio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%
        
        Cardapio cardapio = new Cardapio();
        ControllerCardapio controller = new ControllerCardapio();
        String msg = null;
        if (request.getParameter("acao").equals("alterar")) {
            cardapio.setId(request.getParameter("id"));
            cardapio.setCodigo(request.getParameter("codigo"));
            cardapio.setNome(request.getParameter("nome"));
            cardapio.setDescricao(request.getParameter("descricao"));
            cardapio.setQtd(request.getParameter("qtd"));
            cardapio.setPreco_venda(request.getParameter("preco_venda"));
            cardapio.setPreco_compra(request.getParameter("preco_compra"));
            cardapio.setCategorias_id(request.getParameter("categorias_id"));
        
            boolean retorno = controller.atualizar(cardapio);
            msg = "Cardápio Atualizado";
        
    } else {
             boolean retorno = controller.atualizar(cardapio);
            msg = "Cardápio Não Atualizado";
       
       
    }

%>


<h1><%= msg%></h1>
<a href="cardapiolist.jsp">Voltar Para a Listagem</a>