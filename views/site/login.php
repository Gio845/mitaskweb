<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
?>


<div class="register-area ptb-100 align-items-center justify-content-center">
    <div class="container-fluid ">
        <div class="row ">
            <div class="col-md-12 col-12 col-lg-12 col-xl-12 ml-auto mr-auto" style="text-align:center;">
                <h3>Iniciar Sesión</h3>
            </div>
            <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                <div class="login">
                    <div class="login-form-container">
                        <div class="login-form">
                            <?php
                            $form = ActiveForm::begin([
                                'id' => 'login-form',
                                'layout' => 'horizontal',
                                'fieldConfig' => [
                                    'template' => "{input}\n{error}",
                                ],
                            ]); ?>

                            <?= $form->field($model, 'username')->textInput(['placeholder' => $model->getAttributeLabel('username'), 'class' => "input100", 'autofocus' => true,]) ?>
                            <?= $form->field($model, 'password')->passwordInput(['placeholder' => $model->getAttributeLabel('password'), 'class' => "input100", 'autofocus' => true,]) ?>
                            <div class="button-box">
                                <div class="row">
                                    <a href="#" class="col-6" style="color: #000000; text-align:left;">¿Olvidaste tú contraseña?</a>
                                    <label class="col-6" style="text-align:right;"><a href="/usuario/create" style="color: #000000">Crea tu cuenta</a></label>
                                </div>

                                <?= Html::submitButton('Iniciar sesión', ['class' => 'default-btn floatright']) ?>

                            </div>
                            <?php ActiveForm::end(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>