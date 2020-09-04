<div class="modal fade" tabindex="-1" id="oneClickForm" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title my-3 mx-5"><span class="mvtforms2-modal-title">{$formName}</span></h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-5 my-4">
                <form id="{$formID}_form" class="mvtForm2" method="post">
                    <input type="hidden" name="form" value="{$formID}">
                    <input type="hidden" name="token" value="{$token}">
                    <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
                    <input type="hidden" name="{$formID}_notavailable" value="{$_modx->resource.notavailable}">
                    <div class="form-group">
                        <label>Ваше имя</label>
                        <input class="form-control form-control-lg" name="{$formID}_name" type="text" placeholder="Ваше имя*">
                    </div>
                    <div class="form-group">
                        <label>Ваш адрес электронной почты</label>
                        <input class="form-control form-control-lg"  name="{$formID}_email" type="email" placeholder="E-mail*">
                    </div>
                    <div class="form-group">
                        <label>Ваш телефон</label>
                        <input class="form-control form-control-lg mvtFormPhone" name="{$formID}_phone" type="text" placeholder="Номер телефона*">
                    </div>

                    <div class="form-group mt-4">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1" name="{$formID}_accept" checked>
                            <label class="custom-control-label text-black" for="customCheck1">
                                С <a href="pravila-obrabotki-personalnyix-dannyix">правилами обработки</a> персональных данных ознакомлен
                            </label>
                        </div>
                    </div>

                    <div class="clearfix frm-foot col-12 mt-5 px-0 mx-left">
                        <button id="{$formID}_form_submit" class="btn btn-success btn-lg col-12 mvtForms2-tohide" type="submit">Отправить</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>