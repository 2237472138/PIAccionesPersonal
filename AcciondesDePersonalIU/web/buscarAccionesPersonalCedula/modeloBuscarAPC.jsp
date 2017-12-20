<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    String strTSK = request.getParameter("tsk");
    try {
        if (strTSK.equals("buscar")) {
            String palabra = request.getParameter("palabra");
            //appprueba.ad.AppPruebaWS_Service service = new appprueba.ad.AppPruebaWS_Service();
            // appprueba.ad.AppPruebaWS port = service.getAppPruebaWSPort();

            com.sw.WsAccionesPersonal_Service service = new com.sw.WsAccionesPersonal_Service();
            com.sw.WsAccionesPersonal port = service.getWsAccionesPersonalPort();

            String resp = port.cargarDatos(palabra);
            List<String> lista = new ArrayList();
            Gson gson = new Gson();
            lista = gson.fromJson(resp, ArrayList.class);
            
            session.setAttribute("personas", lista);
            
            response.sendRedirect("controladorBuscarAPC.jsp?tsk=mostrarPersonas");
        }

    } catch (Exception e) {
        //out.print("Error de Generacion Controlador");
    }
%>