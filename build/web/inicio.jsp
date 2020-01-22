<%-- 
    Document   : inicio
    Created on : 22-ene-2020, 12:22:51
    Author     : Alumno_2DAW
--%>

<%@page import="java.util.List"%>
<%@page import="dvdRental.Category"%>
<%@page import="dvdRental.FilmHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container clearfix">
            <p class="titulo">Ejemplo 1 de Hibernate. Listado de peliculas segun la categoria</p>
            <form action="listado.jsp" method="post">
                <p class="text">Categoria</p>
                
                <select class="_select" name="idCategoria">
                    <%
                        FilmHelper fh=new FilmHelper();
                        List<Category>categorias=fh.getCategorias();
                        
                        for(int i=0;i<categorias.size();i++){
                            Category categoria=categorias.get(i);
                            out.print("<option value='"+categoria.getCategoryId()+"'>"+categoria.getName()+"</option>");
                        }
                    %>
                </select>
                <button class="mostrar">Mostrar Peliculas</button>
            </form>
            
        </div>
    </body>
</html>
