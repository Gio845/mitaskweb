<?php

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;
?>
<div class="grupo-search">
    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>
    <?= $form->field($model, 'gru_id') ?>
    <?= $form->field($model, 'gru_nombre') ?>
    <?= $form->field($model, 'gru_descripcion') ?>
    <?= $form->field($model, 'gru_fkusuario') ?>
    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>