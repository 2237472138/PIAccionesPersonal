<%-- 
    Document   : modelIngresarAccionesPersonal.jsp
    Created on : Dec 6, 2017, 1:13:01 AM
    Author     : sttef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

<<<<<<< HEAD
    com.AccionesDePersonal.WSC.WsAccionesPersonal_Service service = new com.AccionesDePersonal.WSC.WsAccionesPersonal_Service();
    com.AccionesDePersonal.WSC.WsAccionesPersonal port = service.getWsAccionesPersonalPort();

    String opcion = request.getParameter("opcion");
    String cedula = request.getParameter("cedula");

    if (cedula != null && opcion.equals("verificar")) {
        //consulta
        String apellido = "Aguayo";
        String nombre = "Stteffano";

        response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula=" + cedula + "&apellido=" + apellido + "&nombre=" + nombre);
    }

    if (cedula != null && opcion != null) {
        //consulta
=======
 String opcion= request.getParameter("opcion");
String cedula =request.getParameter("cedula");

if(cedula!=null && opcion.equals("verificar"))
 {
   //consulta
String apellido ="Aguayo";
String nombre = "Stteffano";
     
 response.sendRedirect("../Controllers/controllerIngresarAccionesPersonal.jsp?cedula="+cedula+"&apellido="+apellido+"&nombre="+nombre);
 }else
{
  if(cedula!=null && opcion.equals("guardar"))
  {
       
       String apellido = request.getParameter("apellido");
       String nombre = request.getParameter("nombre");
        String  explicacion= request.getParameter("explicacion");
        String  resolucion= request.getParameter("resolucion");
        
        
  
       //n consulta de guardado
  }

}



/*
<<<<<<< HEAD
=======
	com.accionesdepersonal.ws.WsAccionesPersonal_Service service = new com.accionesdepersonal.ws.WsAccionesPersonal_Service();
	com.accionesdepersonal.ws.WsAccionesPersonal port = service.getWsAccionesPersonalPort();
	port.guardarDatos(resolucion, cedula, apellido, nombre);
    }
>>>>>>> 668617625fbccab56572688c6b101b61985f5e98
=======
        String opcion = request.getParameter("btn");
        String cedula = request.getParameter("cedula");

        if (cedula != null && opcion != null) {
            //consulta
        }
        String resolucion = request.getParameter("resolucion");
        String apellido = request.getParameter("apellido");
        String nombre = request.getParameter("nombre");

      
>>>>>>> 6dbb453b294a41cc53775b74cf0785dbed8ec7d4
    }
    String resolucion = request.getParameter("resolucion");
    String apellido = request.getParameter("apellido");
    String nombre = request.getParameter("nombre");

    Integer resultAP = port.guardarDatosAP(resolucion, cedula, apellido, nombre);

    //INFORMACION DE LA TABLA DE ACCIONES DE PERSONAL
    /*java.lang.String apellidoAP = port.getApellido(apellido);
    java.lang.String cedulaAP = port.getCedula(cedula);
    java.lang.String nombreAP = port.getNombre(nombre);
    java.lang.String resolucionAP = port.getResolucion(resolucion);*/

<<<<<<< HEAD
=======
>>>>>>> 4d71f941bea6f143bd143d3792c6fc3451021d26*/
>>>>>>> 6dbb453b294a41cc53775b74cf0785dbed8ec7d4
%>