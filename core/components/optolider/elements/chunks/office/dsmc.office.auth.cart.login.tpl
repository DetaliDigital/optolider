<div id="authorization" class="mb-5">
    <form method="post" id="office-auth-login">
        <div class="form-group row">
            <label for="office-auth-login-email" class="col-md-3 col-form-label">
                {'office_auth_login_username' | lexicon}&nbsp;<span class="red">*</span>
            </label>
            <div class="col-md-9">
                <input type="text" name="username" placeholder="" class="form-control form-control-lg"
                       id="office-auth-login-username" value=""/>
                <small class="form-text text-muted text-sm">{'office_auth_login_username_desc' | lexicon}</small>
            </div>
        </div>
        <div class="form-group row">
            <label for="office-auth-login-password" class="col-md-3 col-form-label">
                {'office_auth_login_password' | lexicon}
            </label>
            <div class="col-md-9">
                <input type="password" name="password" placeholder="" class="form-control form-control-lg"
                       id="office-login-form-password" value=""/>
                <small class="form-text text-muted text-sm">{'office_auth_login_password_desc' | lexicon}</small>
            </div>
        </div>
        <div class="form-group row pt-5">
            <input type="hidden" name="action" value="auth/formLogin"/>
            <input type="hidden" name="return" value=""/>
            <div class="col-md-12">
                <button type="submit"
                        class="btn btn-lg btn-success btn-block">{'office_auth_login_btn' | lexicon}</button>
            </div>
        </div>
    </form>
</div>