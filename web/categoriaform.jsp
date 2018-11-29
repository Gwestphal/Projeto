<%-- 
    Document   : categoriaform
    Created on : 28/09/2018, 19:08:01
    Author     : Westphal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicione Categoria</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body style="background-color: darkorange; color: #fff">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">GASTRONOMIA</a>
            <a class="navbar-brand" href="cardapiolist.jsp">CARDAPIO</a>
            <a class="navbar-brand" href="categorialist.jsp">CATEGORIA</a>
        </nav>
        <div class="container text-center" style="margin-top: 70px">
        <h1>Adicione uma Categoria</h1>
            <form class="form-group" action="validarCadastroCat.jsp" method="post">
                <label name='nome' id="nome"><input type="text" name="nome" class="form-control" placeholder="Nome"></label><br>
            <input type="hidden" value="1" name="categorias_id"></label>
            <button type="submit" value="botao" class="btn btn-success">Enviar</button>
            </form>
        </div>
    </body>
</html>
