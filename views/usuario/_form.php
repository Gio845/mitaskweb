<?php

use yii\helpers\Html;
use yii\bootstrap4\Modal;
use kartik\file\FileInput;
use yii\bootstrap4\ActiveForm;
use webvimark\modules\UserManagement\models\User;
?>
<div class="register-area ptb-100">
    <div class="container-fluid">
        <div class="row">
            <?php if (User::hasrole('Normal', false)) { ?>
                <div class="col-md-12 col-12 col-lg-12 col-xl-12 ml-auto mr-auto" style="text-align:center;">
                    <h3>TUS DATOS PERSONALES</h3>
                </div>
            <?php }
            if (Yii::$app->user->isGuest) { ?>
                <div class="col-md-12 col-12 col-lg-12 col-xl-12 ml-auto mr-auto" style="text-align:center;">
                    <h3>Registrate</h3>
                </div>
            <?php } ?>
            <div class="col-md-12 col-12 col-lg-12 col-xl-12 ">
                <div class="login">
                    <div class="login-form-container">
                        <div class="login-form ">
                            <?php $form = ActiveForm::begin(['options' => ['class' => 'row']]); ?>
                            <div class="col-md-6">
                                <?= $form->field($usuario, 'usu_nombre')->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-md-6">
                                <?= $form->field($usuario, 'usu_materno')->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-md-6">
                                <?= $form->field($usuario, 'usu_paterno')->textInput(['maxlength' => true]) ?>
                            </div>
                            <div class="col-md-6">
                                <?= $form->field($user, 'username')->textInput(['maxlength' => 255])->label("Correo Electronico") ?>
                            </div>
                            <?php if (!empty($user->username)) { ?>
                                <?php
                                Modal::begin([
                                    // 'title' => 'Cambiar Contraseña',
                                    // 'titleOptions' => ['label' => 'asd', 'style' => 'color: #000;', 'class' => 'col-md-12'],
                                    'toggleButton' => ['label' => 'Cambiar Contraseña', 'class' => 'col-md-12 btn btn-primary', 'style' => ''],
                                    'bodyOptions' => ['class' => 'row'],
                                    'closeButton' =>  false, //['label' => "X", 'style' => 'color: #000;'],
                                ]); ?>
                                <div class="col-md-12 col-12 col-lg-12 col-xl-12 ml-auto mr-auto" style="text-align:center;">
                                    <h3>Cambiar Contraseña</h3>
                                </div>
                                <div class="col-md-12">
                                    <?= $form->field($user, 'password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                                </div>
                                <div class="col-md-12">
                                    <?= $form->field($user, 'repeat_password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                                </div>
                                <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
                                <?php Modal::end(); ?>
                            <?php } else { ?>
                                <div class="col-md-6">
                                    <?= $form->field($user, 'password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                                </div>
                                <div class="col-md-6">
                                    <?= $form->field($user, 'repeat_password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                                </div>

                            <?php } ?>

                            <div class="col-md-6">
                                <?= $form->field($usuario, 'img')->widget(
                                    FileInput::classname(),
                                    [
                                        'options'       => ['accept' => 'image/*'],
                                        'language'      => 'es',
                                        'pluginOptions' => [
                                            'allowedFileExtensions' =>  ['jpg', 'gif', 'png'],
                                            'initialPreview'        => [$usuario->getUrl()],
                                            'initialPreviewAsData'  => true,
                                            'showCaption'           => false,
                                            'showRemove'            => false,
                                            'showUpload'            => false,
                                            //'browseClass'           => 'btn btn-primary btn-block',
                                            'browseIcon'            => '<i class="fas fa-camera"></i> ',
                                            'browseLabel'           =>  'Seleccione una foto',
                                        ],
                                    ]
                                );
                                ?>
                            </div>
                            <div class="col-md-6 align-items-end text-right clearflix">
                                <?= Html::submitButton('Guardar', ['class' => 'btn btn-success', 'style' => 'margin-top:80%;']) ?>
                            </div>
                            <?php ActiveForm::end(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>