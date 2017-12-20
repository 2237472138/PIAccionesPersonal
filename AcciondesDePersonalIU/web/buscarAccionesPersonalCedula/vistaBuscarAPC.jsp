
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
    String strTSK = request.getParameter("tsk");
    try {
        if (strTSK.equals("mostrar")) {
            String strHTML = "<div class='col-lg-6'>";
                strHTML += "    <div class='input-group'>";
                strHTML += "        <input type='text' class='form-control' id='txtBuscar'>";
                strHTML += "        <span class='input-group-btn'>";
                strHTML += "            <button class='btn btn-default'  onclick='buscar();' type='button'>Buscar</button>";
                strHTML += "        </span>";
                strHTML += "    </div>";
                strHTML += "    <div id='listaPersonas'>";
                strHTML += "    </div>";
                strHTML += "</div>";
            response.setContentType("text/plain");
            response.getWriter().write(strHTML);
        } else if (strTSK.equals("mostrarPersonas")) {
            List<String> personas = (ArrayList)session.getAttribute("personas");
            String strHTML = "";
            for (int i = 0; i < personas.size(); i++) {
                strHTML += "<a>" + i + ".- " + personas.get(i) + "</a><br>";
            }

            response.setContentType("text/plain");
            response.getWriter().write(strHTML);
        }
    } catch (Exception e) {
        //out.print("Error de Generacion Controlador");
    }
%>