<%-- 
    Document   : controllerIngresarAccionesPersonal
    Created on : Dec 5, 2017, 7:01:00 PM
    Author     : sttef
--%>


<%@page import="javax.ejb.Timeout"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    
 try{
 Integer intervalo = 1;

 String opcion= request.getParameter("btn");
 String cedula =request.getParameter("cedula");
 if(cedula!=null && opcion!=null)
 {
     
  response.sendRedirect("../Models/modelIngresarAccionesPersonal.jsp?cedula="+cedula+"&opcion="+opcion);
 }else
 {
 String resolucion = request.getParameter("resolucion");
 String apellido = request.getParameter("apellido");
 String nombre = request.getParameter("nombre");
 response.sendRedirect("../Models/modelIngresarAccionesPersonal.jsp?resolucion="+resolucion+"&cedula="+cedula+"&apellido="+apellido+"&nombre="+nombre+"&opcion="+opcion);
 }
 
  
 

 }catch(Exception e){}


 
%>
