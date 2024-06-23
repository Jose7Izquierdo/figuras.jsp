<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cual es su Figura Geométrica</title>
</head>
<body>
    <h1>Ingrese los valores</h1>
    <form action="resultado.jsp" method="post">
        <!-- Etiquetas y campos de entrada para los valores -->
        <label for="valor1">Primer valor:</label>
        <input type="text" id="valor1" name="valor1"><br><br>
        <label for="valor2">Segundo valor:</label>
        <input type="text" id="valor2" name="valor2"><br><br>
        <label for="valor3">Tercer valor:</label>
        <input type="text" id="valor3" name="valor3"><br><br>
        <label for="valor4">Cuarto valor:</label>
        <input type="text" id="valor4" name="valor4"><br><br>
        
        <!-- Botón para enviar el formulario -->
        <input type="submit" value="Enviar">
    </form>
</body>
</html>
