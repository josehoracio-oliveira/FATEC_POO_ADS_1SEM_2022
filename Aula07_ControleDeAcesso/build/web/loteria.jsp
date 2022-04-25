
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dicas Loteria - JoseHoracioApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Informações:</h2>
        <%if(sessionName==null){%>
            <div style="color:red">Você não tem permissão para acessar essa página</div>
            
        <%}else{%>
           <br>
           <br>
           <h3>Palpites do dia para Loteria:</h3>
    
           <table border = 1>
            <%for(int i=1; i<=6; i++){%>
            <tr>
                <td>Numero aleatório <%= i %>:</td>
                <td><%= loteria[i] %></td>
            </tr>
            <%}%>
        <%}%>
    </body>
</html>
