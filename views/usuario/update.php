<?php

use yii\helpers\Html;

$this->title = 'Actualizar Usuario: ' . $usuario->usu_id;
$this->params['breadcrumbs'][] = ['label' => 'Usuarios', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $usuario->usu_id, 'url' => ['view', 'id' => $usuario->usu_id]];
$this->params['breadcrumbs'][] = 'Actualizar';
?>
<div class="usuario-update">
    <h1><?= Html::encode($this->title) ?></h1>
    <?= $this->render('_form', compact('usuario', 'user')); ?>
</div>