<form action="" method="post" id="office-profile-form" enctype="multipart/form-data" class="mt-5">
    <input type="hidden" name="photo" value="{$photo}"/>
    <input type="file" name="newphoto" id="profile-photo" class="hidden"/>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group row">
                <div class="col-md-12">
                    <div class="d-flex align-items-center">
                        <img src="{if $photo?}{$photo}{else}{$gravatar}?s=100{/if}" id="profile-user-photo"
                             class="rounded-circle mr-3" data-gravatar="{$gravatar}?s=100" width="100"/>
                        <div>
                            <div>
                                <a href="#">
                                    <label for="profile-photo">&plus; {'office_profile_avatar_select' | lexicon}</label>
                                </a>
                            </div>
                            <div>
                                <a href="#" id="office-user-photo-remove"{if !$photo} style="display:none;"{/if}>
                                    &times; {'office_profile_avatar_remove' | lexicon}
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="form-text text-muted">{'office_profile_avatar_desc' | lexicon}</div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="alert alert-warning">
                {'office_profile_header' | lexicon}
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <h3>Личные данные</h3>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_username' | lexicon}<sup
                            class="red">*</sup></label>
                <div class="col-md-12">
                    <input type="text" name="username" value="{$username}"
                           placeholder="{'office_profile_username' | lexicon}"
                           class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_username}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_username_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_fullname' | lexicon}<sup
                            class="red">*</sup></label>
                <div class="col-md-12">
                    <input type="text" name="fullname" value="{$fullname}"
                           placeholder="{'office_profile_fullname' | lexicon}"
                           class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_fullname}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_fullname_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_email' | lexicon}<sup
                            class="red">*</sup></label>
                <div class="col-md-12">
                    <input type="text" name="email" value="{$email}" placeholder="{'office_profile_email' | lexicon}"
                           class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_email}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_email_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">
                    {'office_profile_phone' | lexicon}{if $_modx->config.office_auth_mode == 'phone'}&nbsp;
                        <span class="red">*</span>
                    {/if}
                </label>
                <div class="col-md-12">
                    <input type="text" name="mobilephone" placeholder="" data-mask="+0 000 000 00 00" value="{$mobilephone}" class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_mobilephone}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_phone_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_password' | lexicon}</label>
                <div class="col-md-12">
                    <input type="password" name="specifiedpassword" value="" placeholder="********"
                           class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_specifiedpassword}</div>
                    <span class="form-text text-muted text-sm mb-2">{'office_profile_specifiedpassword_desc' | lexicon}</span>
                    <input type="password" name="confirmpassword" value="" placeholder="********" class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_confirmpassword}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_confirmpassword_desc' | lexicon}</small>
                </div>
            </div>

            {if $providers?}
                <div class="form-group row">
                    <label class="col-md-2 col-form-label">{'ha.providers_available' | lexicon}</label>
                    <div class="col-md-10">
                        {$providers}
                    </div>
                </div>
            {/if}
        </div>
        <div class="col-lg-6">
            <h3>Адрес доставки</h3>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_zip' | lexicon}</label>
                <div class="col-md-12">
                    <input type="text" name="zip" value="{$zip}"
                           placeholder="190000"
                           class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_zip}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_zip_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_city' | lexicon}</label>
                <div class="col-md-12">
                    <input type="text" name="city" value="{$city}"
                           placeholder="Город"
                           class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_city}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_city_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_address' | lexicon}</label>
                <div class="col-md-12">
                    <input type="text" name="address" placeholder="Адрес" value="{$address}" class="form-control form-control-lg"/>
                    <div class="help-block message">{$error_address}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_address_desc' | lexicon}</small>
                </div>
            </div>

            {set $services_options = ['Розничные покупки', 'Оптовые покупки', 'Организатор СП', 'Партнер по дропшиппингу']}

            <h3 class="mt-5">Ваши интересы</h3>
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_services' | lexicon}</label>
                <div class="col-md-12">
                    <select name="services[]" id="services" class="form-control form-control-lg" multiple="multiple" style="display: none;">
                        {foreach $services_options as $option}
                            {set $selected = ($option in list $services)}
                            <option value="{$option}"{$selected ? ' selected' : ''}>{$option}</option>
                        {/foreach}
                    </select>
                    <div class="help-block message">{$error_services}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_services_desc' | lexicon}</small>
                </div>
            </div>

            {set $interests_options = ['Игрушки', 'Электроника', 'Автотовары', 'Часы', 'Сезонные товары', 'Красота и фигура', 'Детские товары', 'Дома и дача', 'Спортивные товары', 'Одежда и аксессуары', 'Товары из телемагазинов']}

            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_profile_interests' | lexicon}</label>
                <div class="col-md-12">
                    <select name="interests[]" id="interests" class="form-control form-control-lg"  multiple="multiple" style="display: none;">
                        {foreach $interests_options as $option}
                            {set $selected = ($option in list $interests)}
                            <option value="{$option}"{$selected ? ' selected' : ''}>{$option}</option>
                        {/foreach}
                    </select>
                    <div class="help-block message">{$error_interests}</div>
                    <small class="form-text text-muted text-sm">{'office_profile_interests_desc' | lexicon}</small>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <div class="form-group row">
        <div class="col-md-12 text-center text-md-left">
            <button type="submit" class="btn btn-lg btn-primary">{'office_profile_save' | lexicon}</button>
            <a class="btn btn-lg btn-danger"
               href="{$_modx->resource.id | url : [] : ['action' => 'auth/logout']}">{'office_profile_logout' | lexicon}</a>
        </div>
    </div>
</form>
