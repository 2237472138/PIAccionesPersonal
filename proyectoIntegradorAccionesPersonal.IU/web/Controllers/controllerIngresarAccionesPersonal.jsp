<%-- 
    Document   : controllerIngresarAccionesPersonal
    Created on : Dec 5, 2017, 7:01:00 PM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
String resolucion = request.getParameter("resolucion");
String cedula =request.getParameter("cedula");
 String apellido = request.getParameter("apellido");
 String nombre = request.getParameter("nombre");

response.sendRedirect("../Models/modelIngresarAccionesPersonal.jsp?resolucion="+resolucion+"&cedula="+cedula+"&apellido="+apellido+"&nombre="+nombre);

%>
