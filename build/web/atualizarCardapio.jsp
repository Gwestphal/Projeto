    <%@page import="br.iesb.controller.ControllerCardapio"%>
<%@page import="br.iesb.bean.Cardapio"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cardapio cardapio = new Cardapio();
    ControllerCardapio controllerCardapio = new ControllerCardapio();
    cardapio.setId(request.getParameter("id"));
    cardapio = controllerCardapio.Buscar(cardapio);
%>
   <!DOCTYPE html> 
   <html
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar o Cardápio</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body style='background-color: darkorange'>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">GASTRONOMIA</a>
            <a class="navbar-brand" href="cardapiolist.jsp">CARDAPIO</a>
            <a class="navbar-brand" href="categorialist.jsp">CATEGORIA</a>
        </nav>
        <div class='container text-center col-sm-12' style='margin-top: 70px'>
        <h1>Alterar o Cardápio</h1>
        <form class="form-group" action="atualizarCardapioVerificar.jsp?id=<%=cardapio.getId() %>" method="post">        
                <input type="hidden" name="id" value="<%=cardapio.getId() %>"><br>
                <label name='nome' id="nome">NOME<input type="text" name="nome" value="<%=cardapio.getNome() %>" class="form-control" placeholder="Nome"></label><br>
                <label name='codigo' id="codigo">CODIGO<input type="text" name="codigo" value="<%=cardapio.getCodigo() %>" class="form-control" placeholder="Codigo"></label><br>
                <label name='descricao' id="descricao">DESCRIÇÃO<input type="text" name="descricao" value="<%=cardapio.getDescricao() %>" class="form-control" placeholder="Descrição"></label><br>
                <label name='qtd' id="qtd">QUANTIDADE<input type="text" name="qtd" value="<%=cardapio.getQtd() %>" class="form-control" placeholder="Quantidade"></label><br>
                <label name='preco_venda' id="preco_venda">PREÇO VENDA<input type="text" name="preco_venda" value="<%=cardapio.getPreco_venda()%>" class="form-control" placeholder="Preço Venda"></label><br>
                <label name='preco_compra' id="preco_compra">PREÇO COMPRA<input type="text" name="preco_compra" value="<%=cardapio.getPreco_compra()%>" class="form-control" placeholder="Preço Compra"></label><br>
                <label name='categorias_id' id="categorias_id">CATEGORIA<input type="text" name="categorias_id" value="<%=cardapio.getCategorias_id()%>" class="form-control" placeholder="Categoria"></label><br>
                <input type="hidden" name="acao" id="acao" value="alterar">

                <button type="submit" value="alterar" class="btn btn-success">Enviar</button>
        </form>
        </div>
    </body>
</html>