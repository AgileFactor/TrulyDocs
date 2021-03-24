<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TrulyDocs</title>

<style type="text/css">
button {
background:transparent;
border:none;
outline:none;
height:20px;
width:200px;
cursor:pointer;
font-size:140%;
text-align:left;
color: #3366cc;
}


#divprocura{
  background-color:white;
  border:solid 2px #216BB9;
  border-radius:10px;
  width:300px;
  height:32px;
  padding-left:5px;
  margin-left: 28%; 
  position: absolute;
  top: 20%;
}

#txtprocura{
  float:left;
  background-color:transparent;
  padding-left:5px;
  font-size:18px;
  border:none;
  height:32px;
  width:191px;
}

#btnprocura{
  border:none;
  float:right;
  height:32px;
  border-radius:0 7px 7px 0;
  width:50px;
  font-weight:bold;
  background:#216BB9;
}
</style>

</head>
<body>
<img id="photo" src="agile.png" alt="AgileFactor" style="width:200px;height:150px;position:absolute; left:10px; top:-40px; z-index: 2;">
<button onclick="" ><img id="photo" src="voltar.png" alt="voltar" style="width:5%;height:5%;position:absolute; left:1px; top:140px; z-index: 2;"></button>
<img id="photo" src="trulydocs.png" alt="trulydocs" style="width:150px;height:150px;position:absolute; left:100px; top:140px; z-index: 2;">
<img id="photo" src="retangulo.png" alt="retangulo" style="width:500px;height:500px;position:absolute; left:-80px; top:160px; z-index: 2;">

<table  border="0px" style="position:absolute; left:75px; top:250px; z-index: 6;">
	<tr>
	    <th><button onclick="" >&#9679;  Página Inicial</button></th>
  	</tr>
  	<tr>
	    <th><button onclick="">&#9679;   Documentos</button></th>
  	</tr>
  	<tr>
	    <th><button onclick="">&#9679;   Ficheiros</button></th>
  	</tr>
</table>

<div id="divprocura">
  	<input type="text" id="txtprocura" placeholder="Procurar..."/>
  	<button id="btnprocura">&#128269;</button>
</div>

</body>
</html>