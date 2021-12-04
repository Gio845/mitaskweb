<?php

use yii\helpers\Html;

$this->title = 'Update Grupo: ' . $model->gru_id;
$this->params['breadcrumbs'][] = ['label' => 'Grupos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->gru_id, 'url' => ['view', 'gru_id' => $model->gru_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="grupo-update">
    <h2><?= Html::encode($this->title) ?></h2>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>