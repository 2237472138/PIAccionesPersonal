<%-- 
    Document   : modelIngresarAccionesPersonal.jsp
    Created on : Dec 6, 2017, 1:13:01 AM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String resolucion = request.getParameter("resolucion");
String cedula =request.getParameter("cedula");
String apellido = request.getParameter("apellido");
String nombre = request.getParameter("nombre");

	com.accionesdepersonal.ws.WsAccionesPersonal_Service service = new com.accionesdepersonal.ws.WsAccionesPersonal_Service();
	com.accionesdepersonal.ws.WsAccionesPersonal port = service.getWsAccionesPersonalPort();
	port.guardarDatos(resolucion, cedula, apellido, nombre);
    }
%>