

<%
    try {
        String strTSK = request.getParameter("tsk");
        if (strTSK.equals("buscar")) {
            String palabra = request.getParameter("palabra");
            response.sendRedirect("modeloBuscarAPC.jsp?tsk=" + strTSK + "&palabra=" + palabra);
        } else if (strTSK.equals("mostrar")) {
            response.sendRedirect("vistaBuscarAPC.jsp?tsk=" + strTSK);
        } else if (strTSK.equals("mostrarPersonas")) {
            response.sendRedirect("vistaBuscarAPC.jsp?tsk=" + strTSK);
        }
    } catch (Exception e) {
        //out.print("Error de Generacion Controlador");
    }
%>