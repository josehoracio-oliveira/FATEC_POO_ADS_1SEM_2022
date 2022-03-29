<%-- 
    Document   : index
    Created on : 28 de mar. de 2022, 19:43:23
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String errorMessage = null;
    boolean hasParameters = request.getParameter("Calcular")!=null;
    double valor=0, taxa=0, periodo=0, result=0;
    if(hasParameters){
        try{
            valor   = Double.parseDouble(request.getParameter("n1"));
            taxa    = Double.parseDouble(request.getParameter("n2"));
            periodo = Double.parseDouble(request.getParameter("n3"));
            //VF = VP*(1+(i/100)*N);
            result = valor*(1+(taxa/100)* periodo);
        }catch(Exception ex){
            errorMessage = "Erro ao tentar ler parâmetros";
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--CSS--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Aula07 - Diretivas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
         
        <%--Ícone--%>
        <div classe="container-fluid">
            <h1>Juros Simples</h1>
        </div>
        

        <%--Form--%>
        <form action="juros-simples.jsp">
            <input class="input" type="number" placeholder="Valor Presente"         name="n1" required>
            <input class="input" type="number" placeholder="Prazo (meses)"          name="n2" required>
            <input class="input" type="number" placeholder="Taxa de Juros (% a.m)"  name="n3" required>
            <input class="button" type="submit" name="Calcular" value="Calcular" />
        </form>
        
        <br>
        <%--Validação Parâmetro--%>
        <%if(errorMessage!=null){%>
        <div style="color: red"><%= errorMessage %></div>
        <%}else if(hasParameters){%>
        <div><u>Valor Futuro:</u> R$<%=result%></div>
        <hr/>
        <%}%>


        <%--Bundle--%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
