<?php

use yii\helpers\Html;
use yii\grid\GridView;

$this->title = 'Usuarios';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuario-index">
    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Create Usuario', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'usu_id',
            'usu_nombre',
            'usu_materno',
            'usu_paterno',
            [
                'attribute' => 'imagen',
                'format' => 'raw',
            ],
            //'usu_imagen',
            //'usu_fkuser',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>