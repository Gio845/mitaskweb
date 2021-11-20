<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Fecha */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="fecha-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'fec_fecha')->textInput() ?>

    <?= $form->field($model, 'fec_fktarea')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
