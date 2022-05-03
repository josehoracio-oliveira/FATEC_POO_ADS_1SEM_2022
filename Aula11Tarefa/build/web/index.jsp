<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 19:22:51
    Author     : fatec
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="model.Database"%>
<%@page import="model.Disciplina"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% Date agora = new Date(); %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - POO</title>
    </head>
    <body>
        <h1>POO</h1>
        <h2>Aula 11 - Tarefa</h2>
        <h2>José Horácio / Filipe Lemos</h2>
        <h2><%= agora %></h2>
 
        <hr/>
        <h3>Disciplinas:</h3>
        <table border="1">
            <tr>
                <th>Sigla</th>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Dia da semana</th>
                <th>Horário</th>
            </tr>
            
            <%for(Disciplina d: Database.getDisciplina()){%>
            <tr>
                <td><%= d.getSigla() %></td>
                <td><%= d.getNome() %></td>
                <td><%= d.getEmenta() %></td>
                <td><%= d.getDiaSemana() %></td>
                <td><%= d.getHorario() %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>