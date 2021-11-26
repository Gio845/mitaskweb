<?php

use yii\helpers\Html;
use app\models\Usuario;
use kartik\select2\Select2;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Grupo */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="grupo-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'gru_nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'gru_descripcion')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'gru_fkusuario')->widget(Select2::classname(), [
        'data' => Usuario::mapUsuario(),
        'language' => 'es',
        'options' => ['placeholder' => 'Seleccione un Alumno...'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>