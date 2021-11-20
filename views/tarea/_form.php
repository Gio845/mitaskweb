<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Tarea */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tarea-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tar_nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tar_descripcion')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tar_registro')->textInput() ?>

    <?= $form->field($model, 'tar_estatus')->textInput() ?>

    <?= $form->field($model, 'tar_privacidad')->textInput() ?>

    <?= $form->field($model, 'tar_fkgrupo')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
