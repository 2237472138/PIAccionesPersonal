<main id="mainContainer" class="container">
    <div id="contenidoEncabezadoAsignatura" class="row">
        <!-- BOTON menu -->
        <div id="contenidoIcono" class="col-xs-1 p-0" >
            <a href="aplicaciones.html">
                <div class="d-inline-block icono_menu"></div>
            </a>
        </div>
        <div class="col-xs-9 contenidoTitulo" >
            <p id="titulo" class="text-small-caps">
                NOMBRE DEL DOCUMENTO
            </p>
        </div>
        <div id="contenidoEncabezadoDetalle" class="col-xs-2 p-0">
            <p id="subtitulo" class="text-small-caps">
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento<br>
                otros datos de interés del documento
            </p>
        </div>
    </div>    

    <div id="brrNavegacion" class="row">
        <div class="col-xs-6">
            <form class="form-inline">
                <select id="slcAsignatura2" class="selectpicker dda-select dda-select-100" >
                    <option data-icon="fa-fw" data-subtext="(EIS)">Programación Orientada a Objetos</option>
                    <option data-icon="fa-check" data-subtext="(EIS)">Tecnologías de la Información Aplicada a la Educación Superior</option>
                    <option data-icon="fa-fw" data-subtext="(EIS)" selected>Ingeniería de Software II</option>
                    <option data-icon="fa-warning" data-subtext="(EDG)">Proyecto Integrador III</option>
                </select>
            </form>
        </div>
    </div>

    <div id="contenido" class="row">
        
        <div id="menuLateral"  class="col-xs-3">
            <div id="menuTipo">
                <span id="lnkReportes" class="dda-link" onclick="mostrar_reportes()">
                    <i class="fa fa-pie-chart"></i>
                </span>
                <span id="lnkDocumentos" class="dda-link dda-link-selected" onclick="mostrar_documento()">
                    <i class="fa fa-file-text"></i>
                </span>
                <span id="lnkConfigurar" class="dda-link" onclick="mostrar_configuracion()">
                    <i class="fa fa-cog"></i>
                </span>
            </div>
            <div id="menuLateralScrollbar" class="menuLateralScrollbar">
                <!-- Menú Lateral-->
                <ul id="treeview">
                    <!--------------------------------------------------------------------------------------------------->
                    <li id="documento" data-expanded="false">
                        Acci&oacute;n De Personal
                        <ul>
                            <li>A. Nueva Acci&oacute;n De Personal</li>
                            <li><a href="../../modificarAccionesPersonal.jsp" style="text-decoration:none">B. Modificar Acci&oacute;n De Personal</a></li>
                            <li data-expanded="false">C. Buscar Acci&oacute;n De Personal
                                <ul>
                                    <li>Por nombre</li>

                                    <li><a onclick="cargaContenido();">Por n&uacute;mero de c&eacute;dula</a></li>
                                    <li>Por n&uacute;mero de registro</li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!--------------------------------------------------------------------------------------------------->
                    <li id="configuracion" data-expanded="false">
                        Usuarios
                        <ul><li>A. Agregar Usuario</li>
                            <li>B. Modificar Usuario</li>
                            <li>C. Listar Usuarios</li>
                        </ul>
                    </li>
                    <!--------------------------------------------------------------------------------------------------->
                    <li id="reportes" data-expanded="false">
                        Acciones de Personal
                        <ul><li>A. PDF</li>
                            <li>B. Imprimir</li>
                            <li>C. Guardar</li>
                        </ul>
                    </li>
                    <!--------------------------------------------------------------------------------------------------->
                </ul>
            </div>
        </div>
        
        
        
        
        
        
        <div id="contenidoPrincipal" class="col-xs-9">
            <!-- Botones para ampliar el área de trabajo -->
            <!-- Contenido Principal -->
            <div class="row dda-row">
                <div id="contenidoTitulo" class="col-xs-9">
                    Datos generales de la asignatura
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
                    <div id="contenidoDinamico" class="mt-1">
                        <!-- Contenido -->
                        
                   
                   
                      
                    </div>
                    <div id="listaPersonas" class="mt-1">
                        
                    </div>
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

    </div>            
</main>
  <script src="js/documento/enlaces.js" type="text/javascript"></script>
<script src="js/documento/documento.js" type="text/javascript"></script>