<?php

use app\models\Fecha;
use yii\helpers\Html;
use kartik\select2\Select2;
use yii\widgets\ActiveForm;
use kartik\datetime\DateTimePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Fecha */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="fecha-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php // $form->field($model, 'fec_fecha')->textInput() 
    ?>
    <?= $form->field($model, 'fec_fecha')->widget(DateTimePicker::classname(), [
        'options' => ['placeholder' => 'Fecha de la tarea'],
        'removeButton' => false,
        'pickerIcon' => '<i class = "fas fa-calendar-alt text-primary"></i>',
        'pluginOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd HH:mm:ss'
        ]
    ]);
    ?>

    <?= $form->field($model, 'fec_fktarea')->widget(Select2::classname(), [
        'data' => Fecha::getTareasMap(),
        'options' => ['placeholder' => 'Selecciona el Grupo ...'],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]);
    ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>