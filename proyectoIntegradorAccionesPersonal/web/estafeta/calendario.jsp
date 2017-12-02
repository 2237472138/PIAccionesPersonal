<%!
    public String getEventosDocencia() {
        String eventosDocencia = ""
                + "    ["
                + "        {"
                + "            \"id\": \"111\","
                + "            \"title\": \"Preparación y actualización de clases, seminarios, talleres, entre otros\","
                + "            \"start\": \"2017-06-19T08:00:00\","
                + "            \"end\": \"2017-06-19T11:00:00\""
                + "        },"
                + "        {"
                + "            \"id\": \"112\","
                + "            \"title\": \"Preparación y actualización de clases, seminarios, talleres, entre otros\","
                + "            \"start\": \"2017-06-19T14:00:00\","
                + "            \"end\": \"2017-06-19T15:00:00\""
                + "        }"
                + "    ]";
        return eventosDocencia;
    }

    public String getEventosInvestigacion() {
        String eventosInvestigacion = ""
                + "    ["
                + "        {"
                + "            \"id\": \"211\","
                + "            \"title\": \"Investigación ...\","
                + "            \"start\": \"2017-06-30T08:00:00\","
                + "            \"end\": \"2017-06-30T11:00:00\""
                + "        },"
                + "        {"
                + "            \"id\": \"212\","
                + "            \"title\": \"Investigación ...\","
                + "            \"start\": \"2017-06-20T14:00:00\","
                + "            \"end\": \"2017-06-20T15:00:00\""
                + "        }"
                + "    ]";
        return eventosInvestigacion;
    }

    public String getEventosVinculacion() {
        String eventosVinculacion = ""
                + "    ["
                + "        {"
                + "            \"id\": \"311\","
                + "            \"title\": \"Vinculación ...\","
                + "            \"start\": \"2017-06-21T08:00:00\","
                + "            \"end\": \"2017-06-21T11:00:00\""
                + "        },"
                + "        {"
                + "            \"id\": \"312\","
                + "            \"title\": \"Vinculación ...\","
                + "            \"start\": \"2017-06-21T14:00:00\","
                + "            \"end\": \"2017-06-21T15:00:00\""
                + "        }"
                + "    ]";

        return eventosVinculacion;
    }

    public String getEventosGestion() {
        String eventosGestion = ""
                + "    ["
                + "        {"
                + "            \"id\": \"411\","
                + "            \"title\": \"Gestión ...\","
                + "            \"start\": \"2017-06-30T08:00:00\","
                + "            \"end\": \"2017-06-30T11:00:00\""
                + "        },"
                + "        {"
                + "            \"id\": \"412\","
                + "            \"title\": \"Gestión ...\","
                + "            \"start\": \"2017-06-30T14:00:00\","
                + "            \"end\": \"2017-06-30T15:00:00\""
                + "        }"
                + "    ]";
        return eventosGestion;
    }
%>

<%
    try {
        String tipo = request.getParameter("tipo");
        String show = request.getParameter("show");
        String eventos = "[]";
        if (show.equals("true")) {
            if (tipo.equals("docencia")) {
                eventos = getEventosDocencia();
            } else if (tipo.equals("investigacion")) {
                eventos = getEventosInvestigacion();
            } else if (tipo.equals("vinculacion")) {
                eventos = getEventosVinculacion();
            } else if (tipo.equals("gestion")) {
                eventos = getEventosGestion();
            }
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("cache-control", "no-cache");

        response.getWriter().write(eventos);
    } catch (Exception e) {
        log(e.getMessage());
    }
%>