
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre - JoseHoracioApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Informações:</h2>
        <%if(sessionName==null){%>
            <div style="color:red">Você não tem permissão para acessar essa página</div>
        <%}else{%>
            <div><small><b>Jose Horacio</b></small></div>
            <div><small><b>RA: 1290481813002</b></small></div>
            <div><small><b><a href="https://github.com/josehoracio-oliveira">Perfil GitHub</a></b></small></div>
        <%}%>
    </body>
</html>
