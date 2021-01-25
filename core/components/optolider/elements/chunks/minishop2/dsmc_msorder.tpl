<form class="ms2_form" id="msOrder" method="post">
    <div class="row mb-5">

        {if $_modx->user.id == 0}
        <div class="col-12 mb-5">
            <div class="card bg-dark text-white">
                <img src="upload/125/optoliders_profile.jpg" class="card-img card-img-profile" alt="...">
                <div class="card-img-overlay">
                    <div class="card-body h-100">
                        <div class="col-lg-7 d-flex flex-column justify-content-center h-100">
                            <h5 class="card-title h2 text-white mb-4">Личный кабинет ОПТОLIDER</h5>
                            <p class="card-text">{'сс_office_description' | option}</p>
                            <div class="card-text mt-3">
                                <a href="#" data-toggle="modal" data-target="#officeForm" class="btn btn-lg btn-success px-5">Авторизоваться</a>
                                <a href="#" data-toggle="modal" data-target="#officeForm" class="text-white ml-4 font-weight-semibold btn btn-link">Зарегистрироваться</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {/if}

        <div class="col-12 col-md-6">
            <h4 class="font-weight-semibold mb-5 bolder-title position-relative">{'ms2_contact details' | lexicon}:</h4>
            {foreach ['receiver','email','phone', 'index'] as $field}
                <div class="form-group row input-parent">
                    <label class="col-md-3 col-form-label" for="{$field}">
                        {('ms2_frontend_' ~ $field) | lexicon} <span class="required-star">*</span>
                    </label>
                    <div class="col-md-8">
                        <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                               name="{$field}"
                               value="{$form[$field]}"{if $field == 'phone'} data-mask="+0 000 000 00 00"{/if}
                               class="form-control form-control-lg{($field in list $errors) ? ' error' : ''}">
                    </div>
                </div>
            {/foreach}
        </div>


        <div class="col-12 col-md-6 id=" payments
        ">

        <h4 class="font-weight-semibold mb-5 bolder-title position-relative mt-5 mt-lg-0">{'ms2_comments_on_the_order' | lexicon}
            :</h4>
        <div class="form-group row input-parent">
            <div class="col-md-12">
                    <textarea name="comment" id="comment" placeholder="{'ms2_frontend_comment' | lexicon}"
                              class="form-control form-control-lg{('comment' in list $errors) ? ' error' : ''}">{$form.comment}</textarea>
            </div>
        </div>
    </div>
    </div>

    <div class="row">
        <div class="col-12" id="deliveries">
            <h4 class="font-weight-semibold bolder-title position-relative mb-5">{'ms2_frontend_deliveries' | lexicon}
                :</h4>
            <div class="form-group row input-parent checkbox-horizontal">
                <label class="col-md-2 col-form-label form-big-label mb-3 mb-lg-0" for="dev">
                    Выберите город: <span class="required-star">*</span>
                </label>
                <div class="col-md-8 d-md-flex align-items-center">
                    <div class="form-check form-check-inline mr-3 ">
                        <input checked class="form-check-input" type="radio" name="region" id="delivery_moscow"
                               value="Москва">
                        <label class="form-check-label" for="delivery_moscow">Москва</label>
                    </div>
                    <div class="form-check form-check-inline mr-3">
                        <input class="form-check-input" type="radio" name="region" id="delivery_spb"
                               value="Санкт-Петербург">
                        <label class="form-check-label" for="delivery_spb">Санкт-Петербург</label>
                    </div>
                    <div class="form-check form-check-inline mr-3">
                        <input class="form-check-input" type="radio" name="region" id="delivery_ekb"
                               value="Екатеринбург">
                        <label class="form-check-label" for="delivery_ekb">Екатеринбург</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="region" id="delivery_region"
                               value="Другой регион">
                        <label class="form-check-label" for="delivery_region">Другой регион</label>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-12">
                    {foreach $deliveries as $delivery index=$index}
                        {var $checked = !($order.delivery in keys $deliveries) && $index == 0 || $delivery.id == $order.delivery}
                        <div class="checkbox py-3 px-4 border my-4" id="delivery_{$delivery.id}"
                             style="{if $delivery.id == 1 OR $delivery.id == 3 OR $delivery.id == 5 OR $delivery.id == 7}display:none;{/if}">
                            <label class="col-form-label delivery input-parent">
                                <input type="radio" name="delivery" class="ez-radio" value="{$delivery.id}"
                                       id="delivery_{$delivery.id}"
                                       data-payments="{$delivery.payments | json_encode}"
                                        {$checked ? 'checked' : ''}>
                                <span>
                                    <b>{$delivery.name}</b>
                                    {$delivery.description}
                                    </span>

                            </label>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="col-12" id="street">
            {foreach ['city','street'] as $field}
                <div class="form-group input-parent" id="{$field}" style="{if $field == 'city'}display:none;{/if}">
                    <label for="{$field}">
                        {('ms2_frontend_' ~ $field) | lexicon} <span class="required-star">*</span>
                    </label>
                    <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                           name="{$field}" value="{$form[$field]}"
                           class="form-control form-control-lg{($field in list $errors) ? ' error' : ''}">
                </div>
            {/foreach}
        </div>

    </div>

    <hr class="mt-4 mb-4"/>
    <div class="d-flex flex-column align-items-end justify-content-md-end mb-4">
        <div class="form-check mb-4 policy">
            <input class="form-check-input" type="checkbox" checked name="policy" id="policy_1">
            <label class="form-check-label" for="defaultCheck1">
                <span class="ml-2">Я согласен с условиями <a href="polzovatelskoe-soglashenie/" target="_blank">пользовательского соглашения</a></span>
            </label>
        </div>
        <button type="submit" name="ms2_action" value="order/submit"
                class="btn btn-lg btn-success ml-md-2 ms2_link col-md-3">
            {'ms2_frontend_order_submit' | lexicon}
        </button>
    </div>
</form>