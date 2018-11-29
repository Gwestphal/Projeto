<%-- 
    Document   : cardapioform
    Created on : 28/09/2018, 16:48:17
    Author     : Westphal
--%>

<%@page import="br.iesb.bean.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="br.iesb.controller.ControllerCategoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ControllerCategoria categoria = new ControllerCategoria();
    List<Categoria> Lista;
    Lista = categoria.Listar();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
    </head>
    <body style='background-color: darkorange; color: #fff;'>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">GASTRONOMIA</a>
            <a class="navbar-brand" href="cardapiolist.jsp">CARDAPIO</a>
            <a class="navbar-brand" href="categorialist.jsp">CATEGORIA</a>
        </nav>
        <div class="container text-center col-sm-12" style="margin-top: 70px">
        <h1>Lista Categoria</h1>
        <table class="table table-striped text-center table table-hover" style="background-color: orange">
            <tr>
              <th>ID</th> 
              <th>Nome</th> 
              <th>Categoria ID</th>
              <th>Ações</th>
            </tr>
                <%
                for(Categoria registros: Lista)
                {
                %>
            <tr>
                <td> <%=registros.getId()%> </td>
                <td> <%=registros.getNome()%> </td>
                <td> <%=registros.getCategorias_id()%> </td>
                <td><a href="atualizarCategoria.jsp?id=<%=registros.getId()%>" class="btn btn-warning" style="margin:2px">Alterar</a><a href="excluirCategoria.jsp?id=<%=registros.getId()%>" class="btn btn-danger ">Excluir</a></td>
            </tr>

                <%
                }
                %>
        </table>
        <a href="categoriaform.jsp" class='btn btn-info btn-block'>adicione aqui</a>
        </div>
        
    </body>
</html>
