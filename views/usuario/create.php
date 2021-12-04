<?php

use yii\helpers\Html;

$this->title = 'Crear Usuario';
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuario-create">
    <h2><?= Html::encode($this->title) ?></h2>
    <?= $this->render('_form', compact('usuario', 'user')); ?>
</div>