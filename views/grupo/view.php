<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

$this->title = $model->gru_id;
$this->params['breadcrumbs'][] = ['label' => 'Grupos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="grupo-view">
    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Update', ['update', 'gru_id' => $model->gru_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'gru_id' => $model->gru_id], [
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
            'gru_id',
            'gru_nombre',
            'gru_descripcion:ntext',
            'gru_fkusuario',
        ],
    ]) ?>
</div>