{extends 'template:Базовый шаблон'}
{block 'main'}
    <div class="main my-4">
        <div class="container">
            {include 'dsmc_crumbs'}
            <h1>{'pagetitle' | resource}</h1>
            {'!officeProfile' | snippet : [
            'tplProfile' => 'dsmc.Office.profile.form',
            'profileFields' => 'username:50,email:50,fullname:50,phone:16,mobilephone:16,dob:10,gender,address,country,city,street,state,zip,fax,photo,comment,website,specifiedpassword,confirmpassword,services,interests',
            'groups' => 'Сustomer'
            ]}
        </div>
    </div>
{/block}