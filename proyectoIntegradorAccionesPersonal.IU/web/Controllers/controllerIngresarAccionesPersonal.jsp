<%-- 
    Document   : controllerIngresarAccionesPersonal
    Created on : Dec 5, 2017, 7:01:00 PM
    Author     : sttef
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    try {

        String opcion = request.getParameter("btn");
        String cedula = request.getParameter("cedula");
      
         
        if (opcion == null) {
            String apellido = request.getParameter("apellido");
            String nombre = request.getParameter("nombre");
            String explicacion = request.getParameter("explicacion");
            String resolucion = request.getParameter("resolucion");
                String fecha = request.getParameter("fecha");
        response.sendRedirect("../documento.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre + "&explicacion=" + explicacion + "&resolucion=" + resolucion+"&fecha="+fecha);
        

        }
        
        if (cedula != null && opcion.equals("verificar")) 
        {

            response.sendRedirect("../Models/modelIngresarAccionesPersonal.jsp?cedula=" + cedula + "&opcion=" + opcion);
        } 
        
        if (cedula != null && opcion.equals("guardar")) {
                String apellido = request.getParameter("apellido");
                String nombre = request.getParameter("nombre");
                String explicacion = request.getParameter("explicacion");
                String resolucion = request.getParameter("resolucion");
                String fecha = request.getParameter("fecha");
                response.sendRedirect("../Models/modelIngresarAccionesPersonal.jsp?cedula=" + cedula + "&opcion=" + opcion + "&apellido=" + apellido + "&nombre=" + nombre + "&explicacion=" + explicacion + "&resolucion=" + resolucion+"&fecha="+fecha);
            } 

        

        if (opcion.equals("mostrar")) {
            String apellido = request.getParameter("apellido");
            String nombre = request.getParameter("nombre");
            String explicacion = request.getParameter("explicacion");
            String resolucion = request.getParameter("resolucion");
            
            response.sendRedirect("../Models/modelIngresarAccionesPersonal.jsp?cedula=" + cedula + "&opcion=" + opcion + "&apellido=" + apellido + "&nombre=" + nombre + "&explicacion=" + explicacion + "&resolucion=" + resolucion);
            
        }
        
        if(opcion.equals("mostrarg"))
        {
         String apellido = request.getParameter("apellido");
            String nombre = request.getParameter("nombre");
            String explicacion = request.getParameter("explicacion");
            String resolucion = request.getParameter("resolucion");
             String fecha = request.getParameter("fecha");
            
             response.sendRedirect("../accionesdepersonal.jsp?cedula=" + cedula + "&opcion=" + opcion + "&apellido=" + apellido + "&nombre=" + nombre + "&explicacion=" + explicacion + "&resolucion=" + resolucion+ "&fecha="+ fecha);
            
        }
        
        if(opcion.equals("inicio"))
        {
             String apellido = request.getParameter("apellido");
            String nombre = request.getParameter("nombre");
            String explicacion = request.getParameter("explicacion");
            String resolucion = request.getParameter("resolucion");
                String fecha = request.getParameter("fecha");
        response.sendRedirect("../documento.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre + "&explicacion=" + explicacion + "&resolucion=" + resolucion+"&fecha="+fecha);
        }

    } catch (Exception e) {
    }


%>
