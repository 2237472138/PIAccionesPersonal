//Calls the selectBoxIt method on your HTML select box.
var docenciaShow = true;
var gestionShow = true;
$(document).ready(function () {
    $('.selectpicker').selectpicker({
        showTick: false,
        showIcon: true,
        iconBase: 'fa',
        tickIcon: 'fa-check',
        size: '7',
        width: 'auto',
        template: "caret: '<span class=\"fa-chevron-down\"></span>'}",
        liveSearch: false,
        liveSearchNormalize: false
    });
    iniciarCalendario();
});
function iniciarCalendario() {
    iniciarBotonesCalendario();
    var calendar = $('#calendar').fullCalendar({
        nowIndicator: true,
        defaultView: 'agendaWeek',
        editable: true,
        selectable: true,
        firstDay: 1, //Primer día LUNES
        locale: 'es',
        columnFormat: 'ddd',
        allDaySlot: false,
        height: 'auto',
        contentHeight: 'auto',
        minTime: '07:00:00',
        maxTime: '22:00:00',
        timeFormat: 'H(:mm)',
        slotEventOverlap: false,
        dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'],
        header: {
            left: '',
            center: '',
            right: ''
        },
        businessHours: [// specify an array instead
            {
                dow: [1, 2, 3, 4, 5], // lunes, martes, miércoles, jueves, viernes
                start: '07:00', // 7am
                end: '22:00' // 0pm
            },
            {
                dow: [0, 6], // sábado, domingo
                start: '08:00', // 8am
                end: '18:00' // 6pm
            }
        ],
        select: function (start, end, allDay) {
            endtime = $.fullCalendar.formatDate(end, 'h:mm tt');
            starttime = $.fullCalendar.formatDate(start, 'ddd, MMM d, h:mm tt');
            var mywhen = starttime + ' - ' + endtime;
            $('#createEventModal #apptStartTime').val(start);
            $('#createEventModal #apptEndTime').val(end);
            $('#createEventModal #apptAllDay').val(allDay);
            $('#createEventModal #when').text(mywhen);
            $('#createEventModal').modal('show');
        },
        eventLimit: true, // allow "more" link when too many events
        defaultDate: moment().format("YYYY-MM-DD"),
        eventSources: [
            {
                id: 'docencia',
                url: 'estafeta/calendario.jsp?tipo=docencia',
                type: 'POST',
                data: function () {
                    return {show: $("#docenciaShow").find("input").is(':checked')};
                },
                error: function () {
                    if (console && console.log) {
                        console.log('DOCENCIA ERROR: ' + errorThrown);
                        $(".mensaje").html(errorThrown);
                    }
                },
                className: 'docencia'
            },
            {
                id: 'investigacion',
                url: 'estafeta/calendario.jsp?tipo=investigacion',
                type: 'POST',
                data: function () {
                    return {show: $("#investigacionShow").find("input").is(':checked')};
                },
                error: function () {
                    if (console && console.log) {
                        console.log('INVESTIGACION ERROR: ' + errorThrown);
                    }
                },
                className: 'investigacion'
            },
            {
                id: 'vinculacion',
                url: 'estafeta/calendario.jsp?tipo=vinculacion',
                type: 'POST',
                data: function () {
                    return {show: $("#vinculacionShow").find("input").is(':checked')};
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    if (console && console.log) {
                        console.log('VINCULACION ERROR: ' + errorThrown);
                    }
                },
                className: 'vinculacion'
            },
            {
                id: 'gestion',
                url: 'estafeta/calendario.jsp?tipo=gestion',
                type: 'POST',
                data: function () {
                    return {show: $("#gestionShow").find("input").is(':checked')};
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    $('mensaje').html('<i class="fa fa-warning"></i>&nbsp;&nbsp;|&nbsp;&nbsp;' + errorThrown);
                    if (console && console.log) {
                        console.log('ERROR: GESTION | ' + textStatus + ' | ' + errorThrown);
                    }
                },
                className: 'gestion'
            }
        ],
        loading: function (bool) {
            $('#mensaje').toggle(bool);
        }
    });
}

function iniciarBotonesCalendario() {
    $('#docenciaShow').click(fncDocenciaShow);
    $('#investigacionShow').click(fncInvestigacionShow);
    $('#vinculacionShow').click(fncVinculacionShow);
    $('#gestionShow').click(fncGestionShow);
}

function fncDocenciaShow() {
    var eventosDocencia = $('#calendar').fullCalendar('getEventSourceById', 'docencia');
    if (eventosDocencia) {
        if ($("#docenciaShow").find("input").is(':checked')) { //MOSTRAR
            $("#docenciaShow").find("i").switchClass("fa-fw", "fa-check");
        } else { // OCULTAR
            $("#docenciaShow").find("i").switchClass("fa-check", "fa-fw");
        }
        $('#calendar').fullCalendar('refetchEventSources', 'docencia');
    }
}

function fncInvestigacionShow() {
    var eventosInvestgacion = $('#calendar').fullCalendar('getEventSourceById', 'investigacion');
    if (eventosInvestgacion) {
        if ($("#investigacionShow").find("input").is(':checked')) { //MOSTRAR
            $("#investigacionShow").find("i").switchClass("fa-fw", "fa-check");
        } else { // OCULTAR
            $("#investigacionShow").find("i").switchClass("fa-check", "fa-fw");
        }
        $('#calendar').fullCalendar('refetchEventSources', 'investigacion');
    }
}

function fncVinculacionShow() {
    var eventosVinculacion = $('#calendar').fullCalendar('getEventSourceById', 'vinculacion');
    if (eventosVinculacion) {
        if ($("#vinculacionShow").find("input").is(':checked')) { //MOSTRAR
            $("#vinculacionShow").find("i").switchClass("fa-fw", "fa-check");
        } else { // OCULTAR
            $("#vinculacionShow").find("i").switchClass("fa-check", "fa-fw");
        }
        $('#calendar').fullCalendar('refetchEventSources', 'vinculacion');
    }
}

function fncGestionShow() {
    var eventosGestion = $('#calendar').fullCalendar('getEventSourceById', 'gestion');
    if (eventosGestion) {
        if ($("#gestionShow").find("input").is(':checked')) { //MOSTRAR
            $("#gestionShow").find("i").switchClass("fa-fw", "fa-check");
        } else { // OCULTAR
            $("#gestionShow").find("i").switchClass("fa-check", "fa-fw");
        }
        $('#calendar').fullCalendar('refetchEventSources', 'gestion');
    }
}

//$('#calendar').fullCalendar('clientEvents')