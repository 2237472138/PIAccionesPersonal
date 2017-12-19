<%-- 
    Document   : VistaModificarAP
    Created on : 18/12/2017, 15:45:56
    Author     : alexa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<<<<<<< HEAD

        <div id="contenidoPrincipal" class="col-xs-9">
            <!-- Botones para ampliar el área de trabajo -->
            <!-- Contenido Principal -->
            <div class="row dda-row">
                <div id="contenidoTitulo" class="col-xs-9">
                    Modificar Acci&oacute;n de Personal
                </div>
                <div id="contenidoInfo" class="col-xs-3 text-white">
                    <a id="lnkCargar" href="#" class="nav-link text-white fa fa-cloud-upload" data-toggle="tooltip" data-placement="bottom" title="Cargar PDF"></a>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <a id="lnkDescargar" href="#" class="nav-link text-white fa fa-cloud-download" data-toggle="tooltip" data-placement="bottom" title="Descargar PDF"></a>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <a id="lnkAyuda" href="#" class="nav-link text-white fa fa-question" tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-placement="left"></a>
                </div>                    
            </div>
            <div class="row">
                <div id="contenidoDinamicoScrollbar" class="col-xs-12">

                    <!-- Contenido -->

                    <!--boton de busqueda por accion de personal-->

                    <br>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-xs-2 col-form-label">N° de Acción de Personal:</label>
                        <div class="col-xs-10">
                            <input class="form-control" type="text" placeholder="Número de Acción de Personal" name="palabra2" id="txtBuscar">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-xs-9">
                        </div>
                        <div class="col-xs-3">
                            <!-- posibles valores: fa-check, fa-times o fa-exclamation -->
                            <button type="submit" id="btnBuscar" onclick='buscar(); return false;' value="Buscar" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Verificar ADP">
                                Verificar | <i class="fa fa-fw"></i>
                            </button>
                        </div>
                    </div>

                    <!--boton de busqueda por accion de personal-->
                    <div id="divContenido"> <!--style="visibility:hidden"-->
                        <div id="contenidoDinamico" class="mt-1">
                            <form>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">C&eacute;dula:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Cédula" id="example-text-input">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Resoluci&oacute;n:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Resolución" id="example-text-input">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Nombres:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Nombres" id="example-text-input">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Apellidos:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Apellidos" id="example-text-input">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">N° de Afiliaci&oacute;n al IESS:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="N&uacute;mero de Afiliaci&oacute;n al IESS" id="example-text-input">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="example-date-input" class="col-xs-2 col-form-label">Rige a partir de:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="date" placeholder="19-08-2010" id="example-date-input">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="exampleTextarea" class="col-xs-2 col-form-label">Explicaci&oacute;n:</label>
                                    <div class="col-xs-10">
                                        <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="exampleSelect2" class="col-xs-2 col-form-label">Tipo de Movimiento:</label>
                                    <div class="col-xs-10">
                                        <select multiple class="form-control" id="exampleSelect2" name="tipo" value="">
                                            <option value="1">Ingreso</option>
                                            <option value="2">Ubicaci&oacute;n</option>
                                            <option value="3" >Ascenso</option>
                                            <option value="4">Cambio Administrativo</option>
                                            <option value="5">Vacaciones</option>
                                            <option value="6">Subrogaci&oacute;n</option>
                                            <option value="7">Encargo</option>
                                            <option value="8">Comisi&oacute;n de Servicios con Remuneraci&oacute;n</option>
                                            <option value="9">Revaloraci&oacute;n</option>
                                            <option value="10">Cese de Funciones</option>
                                            <option value="11">Renuncia</option>
                                            <option value="12">Supresi&oacute;n de Puesto</option>
                                            <option value="13">Destituci&oacute;n</option>
                                            <option value="14">Jubilaci&oacute;n</option>
                                            <option value="15">Otro</option>                                        
                                        </select>
                                    </div>
                                </div>
                                <center><p>SITUACION PROPUESTA</p></center>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Dependencia:&nbsp;&nbsp;&nbsp;</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Dependencia" id="example-text-input"  name="Dependencia" value="" >
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Puesto:&nbsp;&nbsp;&nbsp;</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Puesto" id="example-text-input"  name="Puesto" value="" >
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Lugar de Trabajo:&nbsp;&nbsp;&nbsp;</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Lugar de Trabajo" id="example-text-input"  name="LugarTrabajo" value="" >
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="example-number-input" class="col-xs-2 col-form-label">Remuneración Mensual:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="number" placeholder="42" id="example-number-input">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="exampleSelect1" class="col-xs-2 col-form-label">Regimen:&nbsp;&nbsp;&nbsp;</label>
                                    <div class="col-xs-10">
                                        <select class="form-control" id="exampleSelect1">
                                            <option>LOES</option>
                                            <option>LOSEP</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="example-number-input" class="col-xs-2 col-form-label">Partida Individual:</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="number" placeholder="00" id="example-number-input">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="example-text-input" class="col-xs-2 col-form-label">Partida Presupuestaria:&nbsp;&nbsp;&nbsp;</label>
                                    <div class="col-xs-10">
                                        <input class="form-control" type="text" placeholder="Partida Presupuestaria" id="example-text-input"  name="PartPres" value="" >
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="exampleTextarea" class="col-xs-2 col-form-label">Observaciones:</label>
                                    <div class="col-xs-10">
                                        <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-9">
                                    </div>
                                    <div class="col-xs-3">
                                        <!-- posibles valores: fa-check, fa-times o fa-exclamation -->
                                        <button type="button" id="btnGuardar" class="btn btn-secondary float-xs-right" data-toggle="tooltip" data-placement="top" title="Guardar Cambios">
                                            Guardar | <i class="fa fa-fw"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div>
                        </div>
                    </div>
                    <div class="row dda-row">
                        <div id="contenidoPie" class="col-xs-12">
                            <i id="msgIcon" class="fa fa-spinner"></i>
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                            <span id="msgText">Mensaje sobre el estado del proceso</span>
                        </div>
                    </div>
                </div>

                <script src="../js/documento/documento.js" type="text/javascript"></script>



                <!-- ShieldUI CSS para el MENU LATERAL (treeview)-->
                <link href="../css/treeview.min.css" rel="stylesheet" type="text/css"/>

                <!-- ShieldUI JS para el MENU LATERAL (treeview)-->
                <script src="../js/shieldui-core.min.js" type="text/javascript"></script>
                <script src="../js/shieldui-treeview.min.js" type="text/javascript"></script>

                <!-- DDA CSS -->
                <link href="../css/dda.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.select.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.asignaturas.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.aplicaciones.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.aplicaciones.docencia.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.aplicaciones.investigacion.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.aplicaciones.vinculacion.css" rel="stylesheet" type="text/css"/>
                <link href="../css/dda.aplicaciones.gestion.css" rel="stylesheet" type="text/css"/>

                <!-- DDA JS -->
                <script src="../js/dda.js" type="text/javascript"></script>
                <script src="../js/dda.aplicaciones.js" type="text/javascript"></script>
                <script src="../js/dda.select.js" type="text/javascript"></script>

                <!--Mi JS-->
                <script src="modificar.js" type="text/javascript"></script>
                </body>

                </html>
=======
        <h1>Hello World!</h1>
    </body>
</html>
>>>>>>> 91efdde10843d706e2ae918049c13a20782128d5
