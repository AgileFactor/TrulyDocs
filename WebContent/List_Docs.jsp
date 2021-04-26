<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="pt.agilefactor.truly.docs.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TrulyDocs</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css">
<script type="text/javascript" src="JS/scripts.js"></script>
</head>
<body>
<img id="photo" src="img/agile.png" alt="AgileFactor" style="width:200px;height:150px;position:absolute; left:10px; top:-40px; z-index: 2;">
<button class="button1" onClick="history.go(-1)"><img id="photo" src="img/voltar.png" alt="voltar" style="width:5%;height:5%;position:absolute; left:1px; top:140px; z-index: 2; "></button>
<h1 style="position:absolute; left:100px; top:125px; color:#3366cc;">TrulyDocs</h1>
<div class="sidenav">
  <a href="http://localhost:8082/TrulyDocs/Inicial.jsp">Página inicial</a>
  <a href="http://localhost:8082/TrulyDocs/List_Docs.jsp">Documentos</a>
  <a href="http://localhost:8082/TrulyDocs/List_Ficheiros.jsp">Ficheiros</a>
</div>
<div class="createdoc">
Create Doc
<form action="<%=request.getContextPath()%>/register" method="post">
<input type="text" name="name" placeholder="Name..."/>
<input type="submit">
</form>
</div>
<div id="divprocura" style="position:absolute;top:180px;">
  <input type="text" id="txtprocura" placeholder="Procurar..."/>
  <img src="img/lupa.png" id="btnprocura" alt="Procurar" style="width:30px;height:30px;"/>
</div>
<form action="<%=request.getContextPath()%>/tabela" method="get">
<table>
 <tr>
    <th class="tablecab" style="width:4%"><input type="checkbox" name=mybox onClick="toggle(this)"></th>
    <th class="tablecab" style="width:28%">Name</th>
    <th class="tablecab" style="width:10%">Date</th>
    <th class="tablecab" style="width:10%">Last Updated</th>
    <th class="tablecab" style="width:30%">Short description</th>
    <th class="tablecab" style="width:10%">Operations</th>
 </tr>
  <c:forEach var="user" items="${listUser}">
 <tr>
    <th><input type="checkbox" name=mybox value="1"></th>
    <th class="nd"><c:out value="${user.name}" /></th>
    <th></th>
    <th></th>
    <th class="nd"></th>
    <th></th>
 </tr>
  </c:forEach>
<tr>
<td class="tablerod"></td>
<td class="tablerod"></td>
<td class="tablerod"></td>
<td class="tablerod"></td>
<td class="tablerod"><button class="button2">Download Selected</button><button class="button2" style="margin-left:10px;">Delete Selected</button></td>
</tr>
</table>
</form>
</body>
</html>