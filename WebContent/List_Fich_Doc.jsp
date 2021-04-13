<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<button class="button button1" onClick="history.go(-1)" ><img id="photo" src="img/voltar.png" alt="voltar" style="width:5%;height:5%;position:absolute; left:1px; top:140px; z-index: 2;"></button>
<h1 style="position:absolute; left:100px; top:125px; color:#3366cc;">TrulyDocs</h1>
<div class="side">
<a>Doc Nome:<br></a>
<a>Tamanho:<br></a>
<a>Criador:<br></a>
<a>Data de criação:<br></a>
<a>Data de modificação:<br></a>
<a>Número de ficheiros:<br></a>
<a>Tags:</a>
</div>
<div class="sidenav">
  <a href="http://localhost:8080/TrulyDocs/Inicial.jsp">Página inicial</a>
  <a href="http://localhost:8080/TrulyDocs/List_Docs.jsp">Documentos</a>
  <a href="http://localhost:8080/TrulyDocs/List_Ficheiros.jsp">Ficheiros</a>
</div>
<div class="desc">Descrição longa:</div>
<button class="button button2">Create Doc</button>
<div id="divprocura" style="position:absolute;top:345px;">
  <input type="text" id="txtprocura" placeholder="Procurar..."/>
  <img src="img/lupa.png" id="btnprocura" alt="Procurar" style="width:30px;height:30px;"/>
</div>


<table style="position:absolute; top:415px;">
 <tr >
    <th class="th cc" style="width:4%"><input type="checkbox" name=mybox onClick="toggle(this)"></th>
    <th class="th cc" style="width:28%">Name</th>
    <th class="th cc" style="width:10%">Date</th>
    <th class="th cc" style="width:10%">Last Updated</th>
    <th class="th cc" style="width:30%">Short description</th>
    <th class="th cc" style="width:10%">Operations</th>
  </tr>
 <tr>
    <th><input type="checkbox" name=mybox value="1"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="2"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="3"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="4"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="5"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="6"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="7"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="8"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="9"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="10"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="11"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
  <tr>
    <th><input type="checkbox" name=mybox value="12"></th>
    <th class="nd">--------</th>
    <th>--------</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th>--------</th>
  </tr>
</table>
<button class="button3">Download Selected</button>
<button class="button3" style="margin-left:20px">Delete Selected</button>
</body>
</html>