<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Path.Funcionario" %>
<%@ page import="Path.BancoJar" %>
<%@ page import="Path.Banco" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
    <header>
		<h1>LOGO</h1>


		<ul>
			<li>Home</li>
			<li>Contatos</li>
			<li>Sobre</li>
			<li><a href="http://localhost:8080/teste6/Cadastro.html">Adicionar Funcionarios</a></li>
		</ul>

	</header>
<c:if test="${not empty Lista }">
    
    <div class="body">	
        <main>
            <h1>Lista de Funcionarios</h1>
		<table style="border: 1px solid black;">
        <thead >
            <tr >
                <th style="border: 1px solid black;">Nome</th>
                <th style="border: 1px solid black;">Email</th>
                <th style="border: 1px solid black;">Idade</th>
                <th style="border: 1px solid black;">Cargo</th>
                <th style="border: 1px solid black;"></th>
                <th style="border: 1px solid black;"></th>
            </tr>
        </thead>
        <tbody >
        	<c:forEach items="${Lista}" var="funcionario">
            	<tr  style="border: 1px solid black;">
                	<td style="border: 1px solid black; ">${funcionario.nome }</td>
                	<td style="border: 1px solid black; ">${funcionario.email }</td>
                	<td style="border: 1px solid black;">${funcionario.idade }</td>
                	<td style="border: 1px solid black;">${funcionario.cargo }</td>
            		<td><a href="/teste6/Deletar?id=${funcionario.id }"><span class="material-symbols-outlined">delete</span></a></td>
            		<td><a href="/teste6/Mostrar?id=${funcionario.id }"><span class="material-symbols-outlined">edit</span></a></td>
            	</tr>
        	</c:forEach>
        </tbody>
    </table>
</main>
</div>
</c:if>

<c:if test="${empty Lista }" >
    <div class="body">	
        <main>
            <h1>Lista de Funcionarios</h1>
	<h3>Não há nomes adicionados na lista.</h3>
    <a href="http://localhost:8080/teste6/Cadastro.html">Adicionar funcionarios</a>
</main>
</div>
</c:if>

	
	

</body>
</html>