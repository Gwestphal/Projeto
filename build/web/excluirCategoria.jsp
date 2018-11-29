<%@page import="br.iesb.controller.ControllerCategoria"%>
<%@page import="br.iesb.bean.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String msg = null;

if(request.getParameter("id") == null){
    msg= "Não foi possível excluir a Categoria";

}else{
    ControllerCategoria controller = new ControllerCategoria();
    Categoria categoria = new Categoria();
    
    categoria.setId(request.getParameter("id"));
    boolean ret = controller.excluir(categoria);
    if(ret == true){
        msg = "Exclusão com Sucesso";
    }else{
        msg = "Não Foi Possivel Excluir";
    }
}

%>

<h1><%=msg %></h1>
<br>
<a href="categorialist.jsp">Voltar Para a Listagem</a>