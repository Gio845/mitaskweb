<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

$this->title = $model->usu_id;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="usuario-view">
    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Actualizar', ['update', 'id' => $model->usu_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Eliminar', ['delete', 'id' => $model->usu_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => '¿Estás seguro de que quieres eliminar a este usuario?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'usu_id',
            'usu_nombre',
            'usu_materno',
            'usu_paterno',
            //'usu_imagen',
            [
                'attribute' => 'imagen',
                'format' => 'raw',
            ],
            'usu_fkuser',
        ],
    ]) ?>
</div>