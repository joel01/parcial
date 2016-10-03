<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Plataforma Web - Examen Parcial</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        
        <h1>TIENDA DE LIBROS</h1><br>
        
        <table>
            <tr>
              <th>Codigo</th>
              <th>Titulo</th>
              <th>Autor</th>
              <th>Genero</th>
              <th>Precio</th>
              <th></th>
            </tr>
            <tr>
              <th>0553380168</th>
              <th>A Brief History of Time</th>
              <th>Autor</th>
              <th>Genero</th>
              <th>Precio</th>
              <th><form action="pago" method="post"> 
        
      <input type="submit" value="COMPRAR" class="margin_left">
    </form>   </th>
            </tr>
            <tr>
              <th>0062387243</th>
              <th>Divergent</th>
              <th>Autor</th>
              <th>Genero</th>
              <th>Precio</th>
              <th><form action="pago" method="post"> 
        
      <input type="submit" value="COMPRAR" class="margin_left">
    </form>   </th>
            </tr>
            <tr>
              <th>1501127624</th>
              <th>Steve Jobs</th>
              <th>Autor</th>
              <th>Genero</th>
              <th>Precio</th>
              <th><form action="pago" method="post"> 
        <input type="hidden" name="action" value="login">
      <input type="submit" value="COMPRAR" class="margin_left">
    </form>   </th>
            </tr>
            
            
            <c:forEach var="item" items="${listaLibros}">
              <tr>
                <td>Codigo.item1</td>                
                <td>>Autor.item1</td>
                <td>Genero.item1</td>
                <td>Precio.item1</td>
                <td></td>
                <td id='comprar'>
                  <form action="libros" method="post">
                    <input type="hidden" name="action" value="comprar">                    
                    <input type="hidden" name="codigo" value="">                    
                    <input type="submit" value="¡COMPRAR!">
                  </form>
                </td>
              </tr>
            </c:forEach>
          </table>
    </body>
</html>
