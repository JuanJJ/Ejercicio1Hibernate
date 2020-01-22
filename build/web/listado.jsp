<%-- 
    Document   : listado
    Created on : 22-ene-2020, 13:47:33
    Author     : Alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="dvdRental.Film"%>
<%@page import="dvdRental.FilmHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <thead>
                <th>ID</th>
                <th>Titulo</th>
            </thead>
            <%
                int idCategoria=Integer.parseInt(request.getParameter("idCategoria"));
                FilmHelper fh=new FilmHelper();
                List<Film>peliculas=fh.getPeliculas(idCategoria);
                for(int i=0;i<peliculas.size();i++){
                    Film peli=peliculas.get(i);
                
            %>
            <tr>
                <td><%=peli.getFilmId() %></td>
                <td><%=peli.getTitle()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
