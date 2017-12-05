$(document).ready(function () {
    iniciarSelect();
});

function iniciarSelect() {
$('.selectpicker').selectpicker({
        showTick: false,
        showIcon: true,
        iconBase: 'fa',
        tickIcon: 'fa-check',
        size: '7',
        template: "caret: '<span class=\"fa-chevron-down\"></span>'}",
        liveSearch: true,
        liveSearchNormalize: true
    });
}