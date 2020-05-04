<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<h1>Bienvenido</h1>
<h2>Listado de Mensajes</h2>
<jsp:useBean id="uDao" class="covidJPA.DAO.UsuarioDao" scope="request"></jsp:useBean>
<jsp:useBean id="mDao" class="covidJPA.DAO.MensajeDao" scope="request"></jsp:useBean>
<table>
<tr>
<th>Nombre <th/>
<th>Email <th/>
<th>Usuario <th/>
</tr>
<c:forEach var = "m" items="${mDao.list()}">
<tr>
<td><c:out value = "${m.nombre}"/></td>
<td><c:out value = "${m.email}"/></td>
<td><c:out value = "${m.usuarioBean.user}"/></td>
</tr>

</c:forEach>

</table>


</body>
</html>