<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Provas</title>
</head>
<script src="angularjs/angular.min.js"></script>
<link rel= "stylesheet" type= "text/css"
      href="bootstrap/css/bootstrap.css">

<body>

<br/><h1 aling="center">Controle de Notas</h1><br/>
<div class= "container" ng-app="myApp" ng-controller="customersCtrl">
<input type="button" class="btn-btn-primary" value="Inserir" ng-click="cadastrar()"/>
<br/><br/>
<table class="table table-hover">
<tr>
<td><strong>ID</strong></td>
<td><strong>Descricao</strong></td>
<td><strong>Primeira nota</strong></td>
<td><strong>Segunda nota</strong></td>
<td><strong>Media</strong></td>
<td><strong>Opcoes</strong></td>
</tr>
<tr ng-repeat="x in names">
<td>{{x.id}}</td>
<td>{{x.descricao}}</td>
<td>{{x.notaAnterior}}</td>
<td>{{x.notaNova}}</td>
<td>{{x.media}}</td>


<td><input type="button" class="btn btn danger" value="Excluir" ng-click="del(x)"/>
<input type="button" class="btn btn-warning" value="Alterar" ng-click="selectTo(x)"/></td>
</tr>

</table>
</div>

<script>

var app = angular.module('myApp', []);
var linkservice = "http://localhost:8080/ProjProva/REST/recuperacao/";
app.controller('customersCtrl',function($scope, $http){
			$http
			   .get(linkservice + 'select')
			   .then(function(response){
				   $scope.names = response.data;
			   });
			$scope.cadastrar = function(){
				window.sessionStorage.setItem('rec',null);
				window.location.href="cadastro.jsp";
			}
			$scope.del = function(rec){
				var msg = confirm("Tem certeza que deseja excluir este registro?");
				
				if (msg==true){
					$http.post(linkservice + 'delete', rec).then(function(data){
						alert('Registro Deletado!');
					  location.reload();
					});
				}
			}
			$scope.selectTo = function(rec){
				window.sessionStorage.setItem('rec', JSON.stringify(rec));
				window.location.href='cadastro.jsp'
			}
		});


</script>
</body>
</html>