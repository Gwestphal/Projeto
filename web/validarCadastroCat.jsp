<%@page import="br.iesb.controller.ControllerCategoria"%>
<%@page import="br.iesb.bean.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
Categoria categoria = new Categoria();
categoria.setNome(request.getParameter("nome"));
categoria.setCategorias_id(request.getParameter("categorias_id"));

ControllerCategoria controller = new ControllerCategoria();
boolean req = controller.inserir(categoria);

String msg;
if(req==false){
    msg = "A categoria foi cadastrada";
}else{
    msg="Não foi possivel cadastrar a categoria";
}

%>

<%=msg %>
<br>
<a href="categorialist.jsp">Voltar Para a Listagem</a>