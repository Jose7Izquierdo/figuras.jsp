<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>RESULTADO</title>
</head>
<body>
    <h1>Su Figura es un:</h1>
    <%
        // Obtener los valores del formulario
        String val1 = request.getParameter("valor1");
        String val2 = request.getParameter("valor2");
        String val3 = request.getParameter("valor3");
        String val4 = request.getParameter("valor4");

        // Array para almacenar los valores convertidos a double
        double[] valores = new double[4];
        int count = 0;

        // Convertir los valores a números y contarlos
        if (val1 != null && !val1.isEmpty()) valores[count++] = Double.parseDouble(val1);
        if (val2 != null && !val2.isEmpty()) valores[count++] = Double.parseDouble(val2);
        if (val3 != null && !val3.isEmpty()) valores[count++] = Double.parseDouble(val3);
        if (val4 != null && !val4.isEmpty()) valores[count++] = Double.parseDouble(val4);

        // Determinar la figura y realizar los cálculos correspondientes
        if (count == 1) {
            // Cálculos para el círculo
            double radio = valores[0];
            double diametro = 2 * radio;
            double circunferencia = 2 * Math.PI * radio;
            double area = Math.PI * radio * radio;
            
            // Mostrar resultados para el círculo
            out.println("<p>Figura: Círculo</p>");
            out.println("<p>Radio: " + radio + "</p>");
            out.println("<p>Diámetro: " + diametro + "</p>");
            out.println("<p>Circunferencia: " + circunferencia + "</p>");
            out.println("<p>Área: " + area + "</p>");
        } else if (count == 2) {
            // Cálculos para el rectángulo
            double lado1 = valores[0];
            double lado2 = valores[1];
            double perimetro = 2 * (lado1 + lado2);
            double area = lado1 * lado2;
            
            // Mostrar resultados para el rectángulo
            out.println("<p>Figura: Rectángulo</p>");
            out.println("<p>Lado 1: " + lado1 + "</p>");
            out.println("<p>Lado 2: " + lado2 + "</p>");
            out.println("<p>Perímetro: " + perimetro + "</p>");
            out.println("<p>Área: " + area + "</p>");
        } else if (count == 3) {
            // Cálculos para el triángulo
            double lado1 = valores[0];
            double lado2 = valores[1];
            double lado3 = valores[2];
            String tipoTriangulo;
            
            // Determinar el tipo de triángulo
            if (lado1 == lado2 && lado2 == lado3) {
                tipoTriangulo = "Equilátero";
            } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
                tipoTriangulo = "Isósceles";
            } else {
                tipoTriangulo = "Escaleno";
            }
            
            // Calcular el área del triángulo
            double s = (lado1 + lado2 + lado3) / 2;
            double area = Math.sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
            
            // Mostrar resultados para el triángulo
            out.println("<p>Figura: Triángulo " + tipoTriangulo + "</p>");
            out.println("<p>Lado 1: " + lado1 + "</p>");
            out.println("<p>Lado 2: " + lado2 + "</p>");
            out.println("<p>Lado 3: " + lado3 + "</p>");
            out.println("<p>Área: " + area + "</p>");
        } else if (count == 4) {
            // Cálculos para el cuadrado
            double lado1 = valores[0];
            double lado2 = valores[1];
            double lado3 = valores[2];
            double lado4 = valores[3];
            
            // Verificar si los cuatro lados son iguales para determinar si es un cuadrado
            if (lado1 == lado2 && lado2 == lado3 && lado3 == lado4) {
                double perimetro = 4 * lado1;
                double area = lado1 * lado1;
                
                // Mostrar resultados para el cuadrado
                out.println("<p>Figura: Cuadrado</p>");
                out.println("<p>Lado: " + lado1 + "</p>");
                out.println("<p>Perímetro: " + perimetro + "</p>");
                out.println("<p>Área: " + area + "</p>");
            } else {
                // Mostrar mensaje de error si los cuatro lados no son iguales
                out.println("<p>Error: Los cuatro valores no corresponden a un cuadrado.</p>");
            }
        } else {
            // Mostrar mensaje de error si se introducen menos de 1 o más de 4 valores
            out.println("<p>Error: Debe introducir entre 1 y 4 valores.</p>");
        }
    %>
</body>
</html>
