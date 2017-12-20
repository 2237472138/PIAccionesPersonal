$(document).ready(function () {
    _carouselEnable("docenciaAPP");
    _carouselEnable("investigacionAPP");
    _carouselEnable("vinculacionAPP");
    _carouselEnable("gestionAPP");
});

function _carouselEnable(carouselID) {
    var id = "#" + carouselID + " .carousel-item";
    var carouselItems = $(id);
    var carouselItemsLength = carouselItems.length;
    if (carouselItemsLength === 0)
        $('#myLink').addClass('disabled');

    if (carouselItemsLength > 6) {
        carouselItemsLength = 6;
        carouselItems.each(function () {
            var itemToClone = $(this);

            for (var i = 1; i < carouselItemsLength; i++) {
                itemToClone = itemToClone.next();

                // wrap around if at end of item collection
                if (!itemToClone.length) {
                    itemToClone = $(this).siblings(':first');
                }

                // grab item, clone, add marker class, add to collection
                itemToClone.children(':first-child').clone()
                        .addClass("cloneditem-" + (i))
                        .appendTo($(this));
            }
        });

        $('a.carousel-control-prev[href^="#' + carouselID + '"]').hover(function () {
            $(this).css('opacity', '1');
        }, function () {
            $(this).css('opacity', '0.5');
        });

        $('a.carousel-control-next[href^="#' + carouselID + '"]').hover(function () {
            $(this).css('opacity', '1');
        }, function () {
            $(this).css('opacity', '0.5');
        });
    } else {
//        carouselItems.each(function () {
//            var itemToClone = $(this);
//
//            // grab item, clone, add marker class, add to collection
//            itemToClone.addClass("cloneditem-" + (i));
//        });

        $('a.carousel-control-prev[href^="#' + carouselID + '"]').hide();

        $('a.carousel-control-next[href^="#' + carouselID + '"]').hide();
    }
}