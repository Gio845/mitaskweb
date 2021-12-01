<?php

use yii\helpers\Html;
use kartik\file\FileInput;
use yii\bootstrap4\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Usuario */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="usuario-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php //usuario */     
    ?>

    <?= $form->field($usuario, 'usu_nombre')->textInput(['maxlength' => true]) ?>
    <?= $form->field($usuario, 'usu_materno')->textInput(['maxlength' => true]) ?>
    <?= $form->field($usuario, 'usu_paterno')->textInput(['maxlength' => true]) ?>
    <?= $form->field($user, 'email')->textInput(['maxlength' => 255]) ?>
    <?= $form->field($user, 'password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
    <?= $form->field($user, 'repeat_password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
    <?= $form->field($usuario, 'img')->widget(
        FileInput::classname(),
        [
            'options'       => ['accept' => 'image/*'],
            'language'      => 'es',
            'pluginOptions' => [
                'allowedFileExtensions' =>  ['jpg', 'gif', 'png'],
                //'initialPreview'        => [$usuario->getUrl()],
                'initialPreviewAsData'  => true,
                'showCaption'           => false,
                'showRemove'            => false,
                'showUpload'            => false,
                'browseClass'           => 'btn btn-primary btn-block',
                'browseIcon'            => '<i class="fas fa-camera"></i> ',
                'browseLabel'           =>  'Seleccione una foto',
            ],
        ]
    );
    ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>