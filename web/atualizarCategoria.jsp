<%@page import="br.iesb.controller.ControllerCategoria"%>
<%@page import="br.iesb.bean.Categoria"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Categoria categoria = new Categoria();
    ControllerCategoria controllerCategoria = new ControllerCategoria();
    categoria.setId(request.getParameter("id"));
    categoria = controllerCategoria.Buscar(categoria);
%>
   <!DOCTYPE html> 
   <html
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar o Categoria</title>
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
        <form class="form-group" action="atualizarCategoriaVerificar.jsp?id=<%=categoria.getId() %>" method="post">        
            <input type="hidden" name="id" value="<%=categoria.getId() %>"><br>
            <label name='nome' id="nome">NOME<input type="text" name="nome" value="<%=categoria.getNome() %>" class="form-control" placeholder="Nome"></label><br>
            <input type="hidden" name="acao" id="acao" value="alterar">
       
            <button type="submit" value="alterar" class="btn btn-success">Enviar</button>
        </form>
        </div>
    </body>
</html>