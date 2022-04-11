<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String nome = request.getParameter("nome");
    int idade = Integer.parseInt(request.getParameter("idade"));
    
    session.setAttribute("nomeUsuario", nome);
    session.setAttribute("idadeUsuario", idade);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados amazenados na sessão...:</title>
        <link rel="stylesheet" href="../css/estilo.css"/>  
    </head>
    <body>
        <h1>Sessão Gerada...</h1>
        <hr>
        <div class="corpo">
            <ul>
                <li><b>Nome Guardado:</b><%=nome%></li>
                <li><b>Idade Guardada:</b><%=idade%></li>
            </ul>
            
            <ul>
                <li><a href="./">Voltar para a área das Sessões</a></li>       
            </ul>
    </body>
</html>
