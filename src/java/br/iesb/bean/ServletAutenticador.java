package br.iesb.bean;
	import java.io.IOException;
	import java.io.PrintWriter;
	import java.sql.DriverManager;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Connection;
	import java.sql.Statement;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	
	/**
	 * Servlet implementation class ServletAutenticador
	 */
	
	@WebServlet("/ServletAutenticador.java")
	public class ServletAutenticador extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	 
	 static Connection conexao;
	    
	 public ServletAutenticador() {
	    super();
	 }
	    
	 public void init() throws ServletException {
		 try{
			 Class.forName("com.mysql.jdbc.Driver");
			 conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/gastronomia","root","");
			 conexao.setAutoCommit(false);
		 } catch (SQLException | ClassNotFoundException e){
			 System.out.println("Driver não encontrado");
			 e.printStackTrace();
		 }
	 }
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String nome = request.getParameter("nome");
		 String senha = request.getParameter("senha");
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 String consulta = "SELECT * FROM login where nome = '"+nome+"' and senha='"+senha+"'";
		 Statement statement;
		 try {
			 statement = conexao.createStatement();
			 ResultSet rs = statement.executeQuery(consulta);
			 if(rs.next()){ //Usuario autenticado
			 out.println("<h2>Usuario Autenticado</h2>");
                         
                        String redirectURL = "http://localhost:8080/Projeto/index.jsp";
                        response.sendRedirect(redirectURL);
		 }else 
			 //out.println("<h2 style='color:red;'>Usuario não autenticado</h2>");
                         //out.println("<a href='http://localhost:8080/Projeto/login.html'>Voltar ao login</a>");
                        response.sendRedirect("http://localhost:8080/Projeto/login.html?1");
		 } catch (SQLException e) {
			 // TODO Auto-generated catch block
			 e.printStackTrace();
		 } 
	 }
	 
}