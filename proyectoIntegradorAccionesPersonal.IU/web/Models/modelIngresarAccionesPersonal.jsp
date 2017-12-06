<%-- 
    Document   : modelIngresarAccionesPersonal.jsp
    Created on : Dec 6, 2017, 1:13:01 AM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 String opcion= request.getParameter("btn");
String cedula =request.getParameter("cedula");

if(cedula!=null && opcion!=null)
 {
   //consulta
 }
String resolucion = request.getParameter("resolucion");
String apellido = request.getParameter("apellido");
String nombre = request.getParameter("nombre");

<<<<<<< HEAD
=======
	com.accionesdepersonal.ws.WsAccionesPersonal_Service service = new com.accionesdepersonal.ws.WsAccionesPersonal_Service();
	com.accionesdepersonal.ws.WsAccionesPersonal port = service.getWsAccionesPersonalPort();
	port.guardarDatos(resolucion, cedula, apellido, nombre);
    }
>>>>>>> 668617625fbccab56572688c6b101b61985f5e98
%>