<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<script src="angularjs/angular.min.js"></script>

<link rel= "stylesheet" type= "text/css"
      href="bootstrap/css/bootstrap.css">
<body>
<br />
<br />
<h1 aling="center">Notas</h1>
<br />
<div class= "form" ng-app="myProva" ng-controller="provaFormController">
<div>
<form name="provaForm">
<div class="container">
<div class="form-group">
<label for="descricao">Descricao</label><input id="descricao" name="descricao"
type="text" class="form-control" maxlength="50"
ng-model="rec.descricao" required ng-minlength="2" ng-maxlength="50">

<br /><label for="notaAnterior">Primeira Nota</label><input id="notaAnterior"
name="notaAnterior" type="number" class="form-control" maxlength="50"
ng-model= "rec.notaAnterior" required ng-minlength="2" ng-maxlength="50" />

<br /><label for="notaNova">Segunda Nota</label><input id="notaNova"
name="notaNova" type="number" class="form-control" maxlength="50"
ng-model= "rec.notaNova" required ng-minlength="2" ng-maxlength="50" />

<br /><label for="media">Media</label><input id="media"
name="media" type="number" class="form-control" maxlength="50"
ng-model= "rec.media" required ng-minlength="2" ng-maxlength="50" />

</div>
<div class="buttons">
<button ng-click="save()" class="btn btn-primary">Salvar</button>
<button ng-click="voltar()" class="btn btn-primary">Voltar</button>
</div>

</div>

</form>

</div>

</div>

<script>
var app = angular.module('myProva', []);
var linkservice = "http://localhost:8080/ProjProva/REST/recuperacao/";

app.controller('provaFormController', function($scope, $http){
	
	$scope.rec = JSON.parse(window.sessionStorage.getItem('rec'));

	
	$scope.save = function(){
	
		if (!$scope.rec.id){
			$http.post(linkservice + 'save', $scope.rec).then(function(data){
				alert('Registro Iserido!');
				window.location = "index.jsp";
				
			});
		}else{
			$http.post(linkservice + 'update', $scope.rec).then(function(data){
				alert('Registro Alterado!');
				window.location ="index.jsp";
			});
		}
	};
	$scope.voltar = function(){
		window.location = "index.jsp"
	}
});

</script>

</body>
</html>