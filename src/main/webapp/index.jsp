<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
String texto = "Olá ";
texto += request.getParameter("nome");
//texto = texto + request.getParameter("nome");

int valores[] = new int[10];

for(int cont = 10;cont < 20;cont++) {
    valores[cont - 10] = cont;
}

session.setAttribute("numeros", valores);
session.setAttribute("mensagem", texto);
%>

<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Exemplo JSP</title>
    </head>
    <body>
        Olá Mundo!!! <br />
        Ol&aacute; Mundo!!! <br />
        Arquivo Simples <br />
        Mensagem: ${mensagem}

        <ul>
            <c:forEach var="n" items="${numeros}">
            <li>${n}</li>
            </c:forEach>
        </ul>
    </body>
</html>