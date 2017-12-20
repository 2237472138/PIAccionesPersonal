
function cargaContenido() {
    $('#contenidoDinamico').load("buscarAccionesPersonalCedula/controladorBuscarAPC.jsp?tsk=mostrar");
}

function buscar() {
    var palabra = document.getElementById('txtBuscar').value;
    var tsk = 'buscar';

    $.ajax({
        url: "buscarAccionesPersonalCedula/controladorBuscarAPC.jsp",
        type: "GET",
        data: {tsk: tsk, palabra: palabra},
        success: function (datos) {
            //var data = JSON.parse(datos);
            //document.getElementById("btnBuscar").style.visibility = "hidden";

            $("#listaPersonas").html(datos);
        },
        error: function (error) {
            $("#listaPersonas").html("Palabla NO encontrada");
        }
    });

}