<%-- 
    Document   : cardapioform
    Created on : 28/09/2018, 19:08:01
    Author     : Westphal
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicione Cardápio</title>
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
        <div class='container text-center' style="margin-top: 70px; color: #fff">
        <h1>Adicione ao Cardápio</h1>
        <form class="form-group" action="validarCadastroCard.jsp" method="post">
            <label name='nome' id="nome"><input type="text" name="nome"  class="form-control" placeholder="Nome"></label><br>
            <label name='codigo' id="codigo"><input type="text" name="codigo"  class="form-control" placeholder="Código"></label><br>
            <label name='descricao' id="descricao"><input type="text" name="descricao"  class="form-control" placeholder="Descrição"></label><br>
            <label name='qtd' id="qtd"><input type="text" name="qtd"  class="form-control" placeholder="Quantidade"></label><br>
            <label name='preco_compra' id="preco_compra"><input type="text" name="preco_compra"  class="form-control" placeholder="Preço Compra"></label><br>
            <label name='preco_venda' id="preco_venda"><input type="text" name="preco_venda"  class="form-control" placeholder="Preço Venda"></label><br>
            <label name='categorias_id' id="categorias_id"><input type="text" name="categorias_id"  class="form-control" placeholder="Categoria"></label><br>
            <button type="submit" value="butao" class="btn btn-success">SALVAR</button>
        </form>
        </div>
    </body>
</html>
