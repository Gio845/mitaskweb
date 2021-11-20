<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\TareaSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tarea-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'tar_id') ?>

    <?= $form->field($model, 'tar_nombre') ?>

    <?= $form->field($model, 'tar_descripcion') ?>

    <?= $form->field($model, 'tar_registro') ?>

    <?= $form->field($model, 'tar_estatus') ?>

    <?php // echo $form->field($model, 'tar_privacidad') ?>

    <?php // echo $form->field($model, 'tar_fkgrupo') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
