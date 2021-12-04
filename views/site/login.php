<?php

use yii\bootstrap4\Html;
use yii\bootstrap4\ActiveForm;
?>

<div class="register-area ptb-100">
    <div class="container-fluid ">
        <div class="row ">
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
                                <div class="login-toggle-btn">
                                    <!-- <input type="checkbox">
                                    <label>Remember me</label> -->
                                    <a href="#">¿Olvidaste tú contraseña?</a>
                                </div>
                                <a class="txt2" id="toggle" href="/usuario/create">
                                    Crea tu cuenta
                                    <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                </a>
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