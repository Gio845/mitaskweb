<?php

use app\models\Grupo;
use app\models\Tarea;
use yii\helpers\Html;
use kartik\select2\Select2;
use yii\widgets\ActiveForm;
use kartik\datetime\DateTimePicker;

/* @var $this yii\web\View */
/* @var $model app\models\Tarea */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tarea-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tar_nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tar_descripcion')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tar_registro')->widget(DateTimePicker::classname(), [
           'options' => ['placeholder' => 'Fecha límite'],
           'removeButton' => false,
            'pickerIcon' => '<i class = "fas fa-calendar-alt text-primary"></i>',
            'pluginOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-mm-dd'
            ]   ]); 
            ?>

    
    <?= $form->field($model, 'tar_estatus')->widget(Select2::classname(), [
            'hideSearch' => true,
            'data' => [1 => 'Guardado', 0 => 'Eliminado'],
            'options' => ['placeholder' => 'Selecciona...'],
            'pluginOptions' => [
            'allowClear' => true
            ],
        ]);
        ?>

    <?= $form->field($model, 'tar_privacidad')->widget(Select2::classname(), [
            'hideSearch' => true,
            'data' => [1 => 'Publico', 0 => 'Privado'],
            'options' => ['placeholder' => 'Selecciona...'],
            'pluginOptions' => [
            'allowClear' => true
            ],
        ]);
        ?>

        <?= $form->field($model, 'tar_fkgrupo')->widget(Select2::classname(), [
            'data' => Tarea::getGruposNombreMap(),
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