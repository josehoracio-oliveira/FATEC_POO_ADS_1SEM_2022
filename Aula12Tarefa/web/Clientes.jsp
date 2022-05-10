<%-- 
    Document   : Clientes
    Created on : 9 de mai de 2022, 21:49:08
    Author     : Filipe
--%>
<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%
    Exception requestEx = null;
    ArrayList<Cliente> list = new ArrayList<>();
    int count = 0;
    
    try{
        list = Cliente.getList();
        count = Cliente.getCount();
    }
    catch(Exception ex){
        requestEx = ex;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tarefa Aula 12</title>
    </head>
    <body>
        
                <h2> Clientes (<%= count %> registros) </h2>
        <% if (requestEx!=null) {%>
        <h2 style = "color:red"> <%= requestEx.getMessage() %> </h2>
        <%}%>
        <table border="1"> 
            <tr><th>Id</th> <th> Nome </th> <th> Sobrenome </th> </tr>
            <% for(Cliente a: Cliente.getList()){%>
            <tr>
                <td><%= a.getId() %></td>
                <td><%= a.getFirstName() %></td>
                <td><%= a.getLastName() %></td>
            </tr>
            <%}%>
        </table>
        
        <h4> <a href="index.jsp"> Voltar </a> </h4>
        
    </body>
</html>
