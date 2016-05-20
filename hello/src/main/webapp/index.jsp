
<%@page pageEncoding="UTF-8" contentType="text/html" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
  </head>
  <body>
    <!-- on peut aussi charger un document XML externe grâce à l'attribut doc -->
    <x:parse var="u">
      <utilisateur>
        <nom>jean</nom>
        <age>21</age>
      </utilisateur>
    </x:parse>
    
    <x:forEach var="e" select="$u/utilisateur/*">
      <x:out select="name($e)"/> : <x:out select="$e"/><br>
    </x:forEach>
  </body>
</html>
