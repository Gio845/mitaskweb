<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Tarea */

$this->title = $model->tar_id;
$this->params['breadcrumbs'][] = ['label' => 'Tareas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="tarea-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'tar_id' => $model->tar_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'tar_id' => $model->tar_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'tar_id',
            'tar_nombre',
            'tar_descripcion:ntext',
            'tar_registro',
            'tar_estatus',
            'tar_privacidad',
            'tar_fkgrupo',
        ],
    ]) ?>

</div>
