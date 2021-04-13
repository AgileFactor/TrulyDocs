<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista ficheiro</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css">

<img src="img/agile.png" width="160" height="110">
</head>
<body>

<!-- Navegador lateral com as diferentes opções -->
<div class="sidenav">
  <a href="#Página Inicial">Página inicial</a>
  <a href="#Documentos">Documentos</a>
  <a href="#Ficheiros">Ficheiros</a>
  <button class="button buttonCreateFile">Create File</button>
</div>

<!-- aba procura para pesquisar ficheiro  -->
<div id="divprocura" style="position:absolute;top:150px;">
  <input type="text" id="txtprocura" placeholder="Procurar..."/>
  <img src="img/lupa.png" id="btnprocura" alt="Procurar" style="width:30px;height:30px;"/>
</div>

<table id ="tableFiles" style="position:absolute; top:250px;">
 <tr >
    <th class="th cc" style="width:4%"><input type="checkbox" name=mybox value="1"></th>
    <th class="th cc" style="width:28%">Name</th>
    <th class="th cc" style="width:10%">Date</th>
    <th class="th cc" style="width:10%">Last Updated</th>
    <th class="th cc" style="width:30%">Short description</th>
    <th class="th cc" style="width:10%">Operations</th>
 </tr>
 
    
   
 

<body>

</body>
</html>