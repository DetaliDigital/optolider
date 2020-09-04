'use strict';

$(function () {

    // =====================================================
    //      Forms custom JS mvtForms2
    // =====================================================

    mvtForms2.callbacks.success = function (response) {
        $("body").overhang({
            type: "success",
            message: response.data.answer
        });
        $('#' + response.form + '_form').reset();
    };

    mvtForms2.callbacks.error = function (response) {
        $("body").overhang({
            type: "error",
            message: response.data.message
        });
    };

    $(document).on('show.bs.modal','#oneClickForm', function (e) {
        let object = $(e.relatedTarget);
        let title = object.data('title');
        let product = object.data('product');
        $(this).find('.mvtforms2-modal-title').html(`${ title } <span class="text-success">${ product }</span>`);
    });
});

