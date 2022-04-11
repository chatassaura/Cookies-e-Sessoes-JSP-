<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nome = request.getParameter("nome");
    int idade = Integer.parseInt(request.getParameter("idade"));
    
    String nomeCodificado = URLEncoder.encode(nome, "UTF-8");       
    Cookie cookieNome = new Cookie("nome_usuario", nomeCodificado);
    Cookie cookieIdade = new Cookie("idade_usuario", String.valueOf(idade));
    
    cookieNome.setMaxAge(60); //expira o cookie em 60 seg 
    cookieIdade.setMaxAge(30); //expira o cookie em 30 seg 
    
    response.addCookie(cookieNome);
    response.addCookie(cookieIdade);   
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies Gerados!</title>
        <link rel="stylesheet" href="../css/estilo.css"/>  
    </head>
    <body>
        <h1>Cookies geradas...</h1>
        <hr>
        <div class="corpo">
            <ul>
                <li><b>Nome Guardado:</b><%=nome%></li>
                <li><b>Idade Guardada:</b><%=idade%></li>
            </ul>
            
            <ul>
                <li><a href="index.html">Voltar para a área dos cookies</a></li>       
            </ul>
    </body>
</html>
