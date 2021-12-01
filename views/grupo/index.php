<?php

use yii\helpers\Html;
use yii\grid\GridView;

$this->title = 'Grupos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="grupo-index">
    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Create Grupo', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'gru_id',
            'gru_nombre',
            'gru_descripcion:ntext',
            'gru_fkusuario',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>