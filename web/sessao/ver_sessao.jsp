<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nome = "sem dados para exibir";
    int idade = -1;
    
    if(session.getAttribute("nomeUsuario") != null){
        nome = (String)session.getAttribute("nomeUsuario");
    }
    
if(session.getAttribute("nomeUsuario") != null){
        idade = (int)session.getAttribute("idadeUsuario");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendo Cookies Geradas</title>
        <link rel="stylesheet" href="../css/estilo.css">
    </head>
    <body>
        <h1>Dados Armazenados na sessão: </h1>
        <hr>
        <div class="corpo">
            <ul>
                <li><b>Nome Armazenado: </b><%= nome %></li>
                <% if (idade == -1) { %>
                    <li><b>Idade não Armazenada: </b></li>
                <%} else { %>
                    <li><b>Idade Armazenada: </b><%= idade %></li>
                <%} %>
            </ul>
            <li><a href="./">Voltar para a área das Sessões</a></li>  
        </div>
    </body>
</html>
