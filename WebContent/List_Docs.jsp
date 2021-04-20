<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pt.agilefactor.truly.docs.dao.*"%>
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
<button class="button button1" onClick="history.go(-1)"><img id="photo" src="img/voltar.png" alt="voltar" style="width:5%;height:5%;position:absolute; left:1px; top:140px; z-index: 2; "></button>
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
<form  action="<%=request.getContextPath()%>/dados">
<table>
 <tr>
    <th class="th cc" style="width:4%"><input type="checkbox" name=mybox onClick="toggle(this)"></th>
    <th class="th cc" style="width:28%">Name</th>
    <th class="th cc" style="width:10%">Date</th>
    <th class="th cc" style="width:10%">Last Updated</th>
    <th class="th cc" style="width:30%">Short description</th>
    <th class="th cc" style="width:10%">Operations</th>
  </tr>
 <tr>
    <th><input type="checkbox" name=mybox value="1"></th>
    <th class="nd"></th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th></th>
 </tr>
</table>
</form>
<button class="button3">Download Selected</button>
<button class="button3" style="margin-left:20px">Delete Selected</button>
</body>
</html>