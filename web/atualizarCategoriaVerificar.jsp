<%@page import="br.iesb.controller.ControllerCategoria"%>
<%@page import="br.iesb.bean.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%
        
        Categoria categoria = new Categoria();
        ControllerCategoria controller = new ControllerCategoria();
        String msg = null;
        if (request.getParameter("acao").equals("alterar")) {
            categoria.setId(request.getParameter("id"));
            categoria.setNome(request.getParameter("nome"));
        
            boolean retorno = controller.atualizar(categoria);
            msg = "Categoria Atualizada";
        
    } else {
             boolean retorno = controller.atualizar(categoria);
            msg = "Categoria Não Atualizada";
       
       
    }

%>


<h1><%= msg%></h1>
<a href="categorialist.jsp">Voltar Para a Listagem</a>