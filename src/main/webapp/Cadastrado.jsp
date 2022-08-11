<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String nome = (String) request.getAttribute("nomes");
String email = (String) request.getAttribute("emails");
String idade = (String) request.getAttribute("idades");
String cargo = (String) request.getAttribute("cargos");
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<title>Sucesso !</title>
</head>
<body>
	<header>
		<h1>LOGO</h1>


		<ul>
			<li>Home</li>
			<li>Contatos</li>
			<li>Sobre</li>
			<li><a href="http://localhost:8080/teste6/BancoJar">Todos Funcionarios</a></li>
		</ul>

	</header>
	<c:if test="${ not empty nomes && not empty emails && not empty idades && not empty cargos  }">
		<div class="body">

			<main>
				<h1>Funcionario Cadastrado com Sucesso !</h1>
				<br>

				<h3>Dados do Funcionario:</h3>
				<br>
				<p>
					Nome:
					<%=nome%></p>
				<p>
					Email:
					<%=email%></p>
				<p>
					Idade:
					<%=idade%></p>
				<p>
					Cargo:
					<%=cargo%></p>
				<br> <br> <a
					href="http://localhost:8080/teste6/Cadastro.html">Adicionar
					mais funcionarios</a>
			</main>
		</div>
	</c:if>

	<c:if
		test="${ empty nomes ||  empty emails ||  empty idades ||  empty cargos }">
		<div class="body">
			<main>
				<h1>Nenhum Funcionario foi adicionado :(</h1>


				<a href="http://localhost:8080/teste6/Cadastro.html">Adicionar um</a>
			</main>
		</div>
	</c:if>



</body>
</html>