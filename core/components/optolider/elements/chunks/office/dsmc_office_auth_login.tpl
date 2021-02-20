<div class="row tab-content" id="office-auth-form">
    <div class="tab-pane active office-auth-login-wrapper" id="authorization" role="tabpanel"
         aria-labelledby="authorization-tab">
        <form method="post" id="office-auth-login">
            <div class="form-group row">
                <div class="col-md-12">
                    <label for="office-auth-login-email" class="col-12 px-0 col-form-label">
                        {'office_auth_login_username' | lexicon}&nbsp;<span class="red">*</span>
                    </label>

                    <input type="text" name="username" placeholder="" class="form-control form-control-lg"
                           id="office-auth-login-username" value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_login_username_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group hidden row">
                <label for="office-auth-login-phone-code" class="col-md-3 col-form-label">
                    {'office_auth_login_phone_code' | lexicon}
                </label>
                <div class="col-md-9">
                    <input type="text" name="phone_code" class="form-control form-control-lg"
                           id="office-auth-login-phone-code"
                           value="" readonly/>
                    <p class="help-block">
                        <small>{'office_auth_login_phone_code_desc' | lexicon}</small>
                    </p>
                </div>
            </div>
            <div class="form-group row">
                <label for="office-auth-login-password" class="col-md-12 col-form-label">
                    {'office_auth_login_password' | lexicon}
                </label>
                <div class="col-md-12">
                    <input type="password" name="password" placeholder="" class="form-control form-control-lg"
                           id="office-login-form-password" value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_login_password_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group pt-5">
                <input type="hidden" name="action" value="auth/formLogin"/>
                <input type="hidden" name="return" value=""/>
                <button type="submit"
                        class="btn btn-lg btn-success btn-block">{'office_auth_login_btn' | lexicon}
                </button>
            </div>
        </form>
    </div>
    <div class="tab-pane office-auth-login-wrapper" id="registration" role="tabpanel"
         aria-labelledby="registration-tab">
        <form method="post" class="form-horizontal" id="office-auth-register">
            <div class="form-group row">
                <label for="office-auth-register-email" class="col-md-12 col-form-label">
                    {'office_auth_register_email' | lexicon}{if $_modx->config.office_auth_mode == 'email'}&nbsp;
                        <span class="red">*</span>
                    {/if}
                </label>
                <div class="col-md-12">
                    <input type="email" name="email" placeholder="" class="form-control form-control-lg"
                           id="office-auth-register-email"
                           value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_register_email_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label for="office-auth-register-phone" class="col-md-12 col-form-label">
                    {'office_auth_register_phone' | lexicon}{if $_modx->config.office_auth_mode == 'phone'}&nbsp;
                        <span class="red">*</span>
                    {/if}
                </label>
                <div class="col-md-12">
                    <input type="text" name="mobilephone" placeholder="" data-mask="+0 000 000 00 00"
                           class="form-control form-control-lg"
                           id="office-auth-register-phone" value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_register_phone_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group hidden row">
                <label for="office-auth-register-phone-code" class="col-md-12 col-form-label">
                    {'office_auth_register_phone_code' | lexicon}
                </label>
                <div class="col-md-12">
                    <input type="text" name="phone_code" class="form-control" id="office-auth-register-phone-code"
                           value=""/>
                    <div class="help-block">
                        <small>{'office_auth_register_phone_code_desc' | lexicon}</small>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label for="office-auth-register-password" class="col-md-12 col-form-label">
                    {'office_auth_register_password' | lexicon}{if !$_modx->config.office_auth_activation}&nbsp;
                        <span class="red">*</span>
                    {/if}
                </label>
                <div class="col-md-12">
                    <input type="password" name="password" placeholder="" class="form-control form-control-lg"
                           id="office-register-form-password" value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_register_password_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label for="office-auth-register-username" class="col-md-12 col-form-label">
                    {'office_auth_register_username' | lexicon}
                </label>
                <div class="col-md-12">
                    <input type="text" name="username" placeholder="" class="form-control form-control-lg"
                           id="office-register-form-username" value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_register_username_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group row">
                <label for="office-auth-register-fullname" class="col-md-12 col-form-label">
                    {'office_auth_register_fullname' | lexicon}
                </label>
                <div class="col-md-12">
                    <input type="text" name="fullname" placeholder="" class="form-control form-control-lg"
                           id="office-register-form-fullname" value=""/>
                    <small class="form-text text-muted text-sm">{'office_auth_register_fullname_desc' | lexicon}</small>
                </div>
            </div>
            {set $services_options = ['Розничные покупки', 'Оптовые покупки', 'Организатор СП', 'Партнер по дропшиппингу']}
            <div class="form-group row">
                <label class="col-md-12 col-form-label">{'office_auth_register_services' | lexicon}</label>
                <div class="col-md-12">
                    <select name="services[]" id="office-auth-register-services" class="form-control form-control-lg"
                            multiple="multiple" style="display: none;">
                        {foreach $services_options as $option}
                            {set $selected = ($option in list $services)}
                            <option value="{$option}"{$selected ? ' selected' : ''}>{$option}</option>
                        {/foreach}
                    </select>
                    <div class="help-block message">{$error_services}</div>
                    <small class="form-text text-muted text-sm">{'office_auth_register_services_desc' | lexicon}</small>
                </div>
            </div>
            <div class="form-group pt-5">
                <input type="hidden" name="action" value="auth/formRegister"/>
                <button type="submit"
                        class="btn btn-danger btn-lg btn-block">{'office_auth_register_btn' | lexicon}</button>
            </div>
        </form>
    </div>
</div>