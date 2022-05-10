<%-- 
    Document   : Funcionarios
    Created on : 9 de mai de 2022, 21:49:27
    Author     : Filipe
--%>

<%@page import="model.Funcionario"%>
<%@page import="java.util.ArrayList"%>
<%
    Exception requestEx = null;
    ArrayList<Funcionario> list = new ArrayList<>();
    int count = 0;
    
    try{
        list = Funcionario.getList();
        count = Funcionario.getCount();
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
                
                <h2> Funcionários (<%= count %> registros) </h2>
        <% if (requestEx!=null) {%>
        <h2 style = "color:red"> <%= requestEx.getMessage() %> </h2>
        <%}%>
        <table border="1"> 
            <tr><th>Id</th> <th> Nome </th> <th> Sobrenome </th> </tr>
            <% for(Funcionario a: Funcionario.getList()){%>
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
