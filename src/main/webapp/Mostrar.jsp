<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edição</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header>
    <h1>LOGO</h1>

    
        <ul>
            <li>Home</li>
            <li>Contatos</li>
            <li>Sobre</li>
            <li><a href="http://localhost:8080/teste6/Cadastro">Adicionar Funcionarios</a></li>
        </ul>
   
</header>
<div class="body">
<main>
    
        <h1>Edição de Funcionario</h1>
        <form action="/teste6/Editar" method="post">
    
            <div class="input">
                <p>Nome do Funcionario: </p>
                <input type="text" name="nome" value="${funcionario.nome}">
                
            </div>
            <div class="input">
                <p>Email: </p>
                <input type="text" name="email" value="${funcionario.email }">
            </div>
            <div class="input">
                <p>Idade: </p>
                <input type="number" name="idade" id="" value="${funcionario.idade }">
            </div>
            <div class="input">
                <p>Cargo/Função: </p>
                <input type="text" name="cargo" value="${funcionario.cargo }">
            </div>
            
                <input type="hidden" name="id" value="${funcionario.id }">
           
            
            <center><button type="submit">Cadastrar</button></center>
            <center><button><a href="http://localhost:8080/teste6/BancoJar">Cancelar</a></button></center>
        </form>
</main>
</div>
</body>
</html>