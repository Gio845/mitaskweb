<?php

use yii\helpers\Url;
use yii\helpers\Html;
use yii\bootstrap4\Modal;
use yii\bootstrap4\ActiveForm;

$model = new \app\models\Grupo();
?>
<section class="py-5" style="background:white;">
    <?php
    Modal::begin([
        'title' => 'Crear Grupo',
        'toggleButton' => ['label' => 'Crear Grupo', 'options' => ['class' => 'btn btn-success']],

    ]); ?>
    <?php $form = ActiveForm::begin(['action' => Url::to(['create'])]); ?>
    <?= $form->field($model, 'gru_nombre')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'gru_descripcion')->textarea(['rows' => 6]) ?>
    <div class="form-group">
        <?= Html::submitButton('Crear', ['class' => 'btn btn-success']) ?>
    </div>
    <?php ActiveForm::end(); ?>
    <?php Modal::end(); ?>
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <?php foreach ($grupos as $grp) {
                $grp = (object)$grp; ?>
                <div class="col mb-5">
                    <div class="card h-100" style="align-items:center; padding-top:1rem;">
                        <!-- Product image-->
                        <img class="card-img-top" style="width:50%" src="/botones/usuario.png" />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder"><?= $grp->gru_nombre ?></h5>
                                <!-- Product price-->
                                <?= $grp->gru_descripcion ?>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a href="/grupo/todas-las-tareas" class="btn btn-outline-dark mt-auto"> Ver Tareas</a></div>
                        </div>
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <?php // Html::a('Crear Grupo', ['#'], ['class' => 'btn btn-success']) 
                            ?>
                            <?php Modal::begin([
                                'title' => '¿Estas seguro de que deseas eliminar permanente este grupo?',
                                'toggleButton' => ['label' => 'Eliminar', 'options' => ['class' => 'btn btn-success']],

                            ]); ?>
                            <div class="bg-success row align-items-center justify-content-center">
                                <?= Html::submitButton('Eliminar', ['class' => 'btn btn-success col-sm-6']) ?>
                            </div>
                            <?php Modal::end(); ?>
                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>
</section>