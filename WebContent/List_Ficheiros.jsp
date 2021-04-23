<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista ficheiro</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css">
<link rel="stylesheet" type="text/css" href="dropzone/dist/dropzone.css">
<link rel="stylesheet" type="text/css" href="dropzone/dist/basic.css">


<img src="img/agile.png" width="160" height="110">
</head>
<body>

<!-- Navegador lateral com as diferentes opções -->
<div class="sidenav">
  <a href="http://localhost:8082/TrulyDocs/Inicial.jsp">Página inicial</a>
  <a href="http://localhost:8082/TrulyDocs/List_Docs.jsp">Documentos</a>
  <a href="http://localhost:8082/TrulyDocs/List_Ficheiros.jsp">Ficheiros</a>
  
</div>

<button id="createFile" class="button button2">Create File</button>

<!-- Modal -->
<div id="myModal" class="modalBack">

  <!-- Conteudo da modal -->
  <div class="modalConteudo">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Adicionar Ficheiro</h2>
    </div>
    <div class="modal-body">
    
    <p>Exemplo de texto na modal</p>
      
    </div>
    <div class="modal-footer">
      
    </div>
  </div>
</div>


<script type="text/javascript" src="JS/scriptsTiago.js"></script>



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