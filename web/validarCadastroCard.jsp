<%@page import="br.iesb.controller.ControllerCardapio"%>
<%@page import="br.iesb.bean.Cardapio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
Cardapio cardapio = new Cardapio();
cardapio.setNome(request.getParameter("nome"));
cardapio.setCodigo(request.getParameter("codigo"));
cardapio.setDescricao(request.getParameter("descricao"));
cardapio.setQtd(request.getParameter("qtd"));
cardapio.setPreco_compra(request.getParameter("preco_compra"));
cardapio.setPreco_venda(request.getParameter("preco_venda"));
cardapio.setCategorias_id(request.getParameter("categorias_id"));

ControllerCardapio controller = new ControllerCardapio();
boolean req = controller.inserir(cardapio);

String msg;
if(req==false){
    msg = "Cardapio foi cadastrado";
}else{
    msg="Não foi possivel cadastrar";
}

%>

<%=msg %>
<br>
<a href="cardapiolist.jsp">Voltar Para a Listagem</a>