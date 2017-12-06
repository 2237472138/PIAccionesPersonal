<%-- 
    Document   : modelIngresarAccionesPersonal.jsp
    Created on : Dec 6, 2017, 1:13:01 AM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 String opcion= request.getParameter("opcion");
String cedula =request.getParameter("cedula");

if(cedula!=null && opcion.equals("verificar"))
 {
   //consulta
String apellido ="Aguayo";
String nombre = "Stteffano";
     
 response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula="+cedula+"&apellido="+apellido+"&nombre="+nombre);
 }



/*
<<<<<<< HEAD
=======
	com.accionesdepersonal.ws.WsAccionesPersonal_Service service = new com.accionesdepersonal.ws.WsAccionesPersonal_Service();
	com.accionesdepersonal.ws.WsAccionesPersonal port = service.getWsAccionesPersonalPort();
	port.guardarDatos(resolucion, cedula, apellido, nombre);
    }
>>>>>>> 668617625fbccab56572688c6b101b61985f5e98*/
%>