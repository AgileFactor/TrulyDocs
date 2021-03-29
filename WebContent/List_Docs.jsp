<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TrulyDocs</title>

<style type="text/css">
body {
  font-family: "Lato", sans-serif;
}
.sidenav {
  width: 200px;
  z-index: 1;
  top: 240px;
  left: 100px;
  background: #eee;
  overflow-x: hidden;
  padding: 8px 0;
  margin-left:50px;
  margin-top:45px;
}
.sidenav a {
  padding: 10px 30px 25px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #3366cc;
  display: block;
}
.sidenav a:hover {
  color: #064579;
}
.button1 {
background:transparent;
border:none;
outline:none;
display:block;
height:200px;
width:200px;
cursor:pointer;
}
.button2{
 text-align: center;
 font-size: 22px;
 margin-left:50px;
 border:none;
 margin-top:30px;
 color:#3366cc;
  
}
#divprocura{
  background-color:white;
  border:solid 2px;
  border-radius:15px;
  border-color:#3366cc;
  width:300px;
}
#txtprocura{
  float:left;
  background-color:transparent;
  padding-left:5px;
  font-style:italic;
  font-size:16px;
  border:none;
  height:32px;
  width:260px;
}
table{
  position: absolute;
  margin-left: 350px;
  top: 252px;
}
th{
  border: 1px solid black;
  height:30px;
  color: #3366cc;
  background: #eee;
}
.nd{
text-align: left;
}
.cc{
background-color:#3366cc;
color: white;
}

</style>

</head>
<body>
<img id="photo" src="agile.png" alt="AgileFactor" style="width:200px;height:150px;position:absolute; left:10px; top:-40px; z-index: 2;">
<button class="button button1" ><img id="photo" src="voltar.png" alt="voltar" style="width:5%;height:5%;position:absolute; left:1px; top:140px; z-index: 2;"></button>
<h1 style="position:absolute; left:100px; top:125px; color:#3366cc;">TrulyDocs</h1>


<div class="sidenav">
  <a href="#Página Inicial">Página inicial</a>
  <a href="#Documentos">Documentos</a>
  <a href="#Ficheiros">Ficheiros</a>
</div>

<button class="button button2">Create Doc</button>


<div id="divprocura" style="position:absolute; left:500px; top:150px;">
  <input type="text" id="txtprocura" placeholder="Procurar..."/>
  <img src="lupa.png" id="btnprocura" alt="Procurar" style="width:30px;height:30px;"/>
</div>


<table>
 <tr >
    <th class="th cc" style="width:4%"><input type="checkbox" name=mybox value="1"></th>
    <th class="th cc" style="width:28%">Name</th>
    <th class="th cc" style="width:10%">Date</th>
    <th class="th cc" style="width:10%">Last Updated</th>
    <th class="th cc" style="width:30%">Short description</th>
    <th class="th cc" style="width:10%">Operations</th>
  </tr>
 <tr>
    <th><input type="checkbox" name=mybox value="1"></th>
    <th class="nd">--------</th>
    <th>--------_</th>
    <th>--------</th>
    <th class="nd">--------</th>
    <th></th>
 </tr>
</table>
</body>
</html>