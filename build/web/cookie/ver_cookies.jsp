<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nomeCookie = "nome_usuario";
    String idadeCookie = "idade_usuario";
    
    Cookie cookieNomeUsuario = null;
    Cookie cookieIdadeUsuario = null;
    
    Cookie listaCookies[] = request.getCookies();
    
    if(listaCookies != null){
        for(int i = 0; i < listaCookies.length; i++){
            if(listaCookies[i].getName().equals(nomeCookie)){
                cookieNomeUsuario = listaCookies[i];
                break;
            }
        }
    
        for(int i = 0; i < listaCookies.length; i++){
            if(listaCookies[i].getName().equals(idadeCookie)){
                cookieIdadeUsuario = listaCookies[i];
                break;
            }
        }

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
        <h1>Vendo Cookies Geradas</h1>
        <hr>
        <div class="corpo"> 
            <% if(cookieNomeUsuario != null){%>
            <p>          
                <b>Nome do usuários armazenado na Cookie</b>
                <%= URLDecoder.decode(cookieNomeUsuario.getValue(), "UTF-8")%>
            </p>
            <%} else {%>
            <p>          
                <b>Cookie que armazena o nome não encontrada</b>
            </p>
            <% } %>
            
            
            <% if(cookieNomeUsuario != null){%>
            <p>          
                <b>Idade do usuários armazenado na Cookie</b>
                <%= URLDecoder.decode(cookieIdadeUsuario.getValue(), "UTF-8")%>
            </p>
            <%} else {%>
            <p>          
                <b>Cookie que armazena a idade não encontrada</b>
            </p>
            <% } %>
            
            <br><br>
            <li><a href="index.html">Voltar para a área dos cookies</a></li>     
            
        </div>
    </body>
</html>
