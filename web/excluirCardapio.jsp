<%@page import="br.iesb.controller.ControllerCardapio"%>
<%@page import="br.iesb.bean.Cardapio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String msg = null;

if(request.getParameter("id") == null){
    msg= "Não foi possível excluir o cardápio";

}else{
    ControllerCardapio controller = new ControllerCardapio();
    Cardapio cardapio = new Cardapio();
    
    cardapio.setId(request.getParameter("id"));
    boolean ret = controller.excluir(cardapio);
    if(ret == true){
        msg = "Exclusão com Sucesso";
    }else{
        msg = "Não Foi Possivel Excluir";
    }
}

%>

<h1><%=msg %></h1>
<br>
<a href="cardapiolist.jsp">Voltar Para a Listagem</a>