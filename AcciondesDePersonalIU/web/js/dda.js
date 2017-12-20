$(document).ready(function () {
    fncVerificarInternet();
    
    fncLoadHeader();

    fncInitLnkAyuda();

    /* Programar el evento click del lnkReportes */
    //$("#lnkReportes").click(fncLnkReportes);

    /* Programar el evento click del lnkDocumentos */
    $("#lnkDocumentos").click(fncLnkDocumentos);

    /* Programar el evento click del lnkConfigurar */
    $("#lnkConfigurar").click(fncLnkConfigurar);

    /* Programar el evento click del btnGuardar */
    $("#btnGuardar").click(fncBtnGuardar);

    /* Habilitar los tooltips*/
    $('[data-toggle="tooltip"]').tooltip();

    /* Habilitar los popover*/
    $('[data-toggle="popover"]').popover();

    /* Menu lateral*/
    $("#treeview").shieldTreeView();

    $('.treeview').each(function () {
        var tree = $(this);
        tree.treeview();
    });

    /* Contenidos */
    $('.tree-toggle').click(fncToogle);

    $(fncToogleInit());

    fncLoadFooter();
});

/*****************************/

function fncLoadHeader() {
    $(".dda-titulo").load("communs/header.html");
}

function fncLoadFooter() {
    $(".dda-pie").load("communs/footer.html");
}

function fncLnkReportes() {
    $("#lnkReportes").addClass("dda-link-selected");
    $("#lnkDocumentos").removeClass("dda-link-selected");
    $("#lnkConfigurar").removeClass("dda-link-selected");

    var reporte = {
        "titulo": "INGENIERIA EN SISTEMAS",
        "subtitulo": "CAMPOS DE FORMACIÓN",
        "ayuda": "ESTADOS DE SILABOS POR CAMPO DE FORMACIÓN",
        "elementos": [
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "PRAX", "nombre": "PRAXIS PROFESIONAL", "fncClick": "", "datos": {"Inicio": 4, "Revision": 3, "Corregir": 2, "Aprobado": 1}},
            {"codigo": "FT", "nombre": "FUNDAMENTOS TEORICOS", "fncClick": "", "datos": {"Inicio": 1, "Revision": 0, "Corregir": 0, "Aprobado": 0}}
        ]
    };

    pcDibujar(reporte);
}

function fncLnkDocumentos() {
    fncVerificarInternet();

    $("#lnkReportes").removeClass("dda-link-selected");
    $("#lnkDocumentos").addClass("dda-link-selected");
    $("#lnkConfigurar").removeClass("dda-link-selected");
}

function fncLnkConfigurar() {
    fncVerificarInternet();

    $("#lnkReportes").removeClass("dda-link-selected");
    $("#lnkDocumentos").removeClass("dda-link-selected");
    $("#lnkConfigurar").addClass("dda-link-selected");
}

function sleep(miliseconds) {
    var currentTime = new Date().getTime();
    while (currentTime + miliseconds >= new Date().getTime()) {
    }
}

function fncBtnGuardar() {
    var btnGuardar = $("#btnGuardar");
    if (btnGuardar !== undefined) {
        btnGuardar.html('Guardar | <i class="fa fa-spinner fa-spin" ></i>');
        /* Deshabilitar*/
        _fncDeshabilitarContenido();


        /* Simular el proceso de guardado... */
        setTimeout(_fncBtnGuardarOK, 5000);
    }
}

function _fncDeshabilitarContenido() {
    var contenido = $('#contenido');
    if (contenido !== undefined) {
        contenido.find("input,select,textarea,button").prop('disabled', true);

        contenido.fadeTo('slow', .6);
    }
}

function _fncHabilitarContenido() {
    var contenido = $('#contenido');
    if (contenido !== undefined) {
        contenido.find("input,select,textarea,button").prop('disabled', false);

        contenido.fadeTo('slow', 1);
    }
}

function _fncBtnGuardarOK() {
    var btnGuardar = $("#btnGuardar");
    if (btnGuardar !== undefined) {
        _fncHabilitarContenido();
        btnGuardar.tooltip('hide');
        btnGuardar.tooltip('dispose');
        btnGuardar.html('Guardar | <i class="fa fa-check" ></i>');
        btnGuardar.attr('title', 'Cambios guardados.');
        btnGuardar.tooltip();
        btnGuardar.tooltip('show');
    }
}

function _fncBtnGuardarKO() {
    var btnGuardar = $("#btnGuardar");
    if (btnGuardar !== undefined) {
        btnGuardar.tooltip('hide');
        btnGuardar.tooltip('dispose');
        btnGuardar.html('Guardar | <i class="fa fa-exclamation" ></i>');
        btnGuardar.attr('title', 'Cambios NO guardados.');
        btnGuardar.tooltip();
        btnGuardar.tooltip('show');
    }
}

function fncInitLnkAyuda(txtAyuda) {
    txtAyuda = (txtAyuda === "") ? 'Establecer el texto de AYUDA que permita orientar cómo llenar el contenido.' : txtAyuda;
    var lnkAyuda = $("#lnkAyuda");
    if (lnkAyuda !== undefined) {
        lnkAyuda.attr('title', '');
        lnkAyuda.attr('data-content', txtAyuda);
    }
}

function fncToogle() {
    $(this).parent().children('ul.tree').toggle(200);
}

function fncToogleInit() {
    $('.tree-toggle').parent().children('ul.tree').toggle(200);
}

function fncVerificarInternet() {
    setTimeout('fncVerificarInternet()', 2000);
    if (navigator.onLine) {
        $('.dda-internet').removeClass('dda-offline');
    } else {
        $('.dda-internet').addClass('dda-offline');
    }
}
/*****************************************************/