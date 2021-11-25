<?php

use yii\helpers\Html;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use webvimark\modules\UserManagement\UserManagementModule;

?>

<header>
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar navbar-expand-md navbar-dark bg-dark fixed-top',
        ],
    ]);
    $menuItems = [
        ['label' => 'Inicio', 'url' => ['/site/index']],

    ];
    $menuItems[] = [
        'label' => 'Administrador',
        'items' => UserManagementModule::menuItems(),
        'options' => [
            'class' => '  list-inline-item last-item '
        ],
        'encodeLabels' => false,
        //'visible' => User::hasPermission()
    ];
    Yii::$app->user->isGuest ?  $menuItems[] = (['label' => 'Iniciar sesión', 'url' => ['/user-management/auth/login']]) :  $menuItems[] = ('<li>'
        . Html::beginForm(['/user-management/auth/logout'], 'post', ['class' => 'form-inline'])
        . Html::submitButton(
            'Logout (' . Yii::$app->user->identity->username . ')',
            ['class' => 'btn btn-link logout']
        )
        . Html::endForm()
        . '</li>');
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => $menuItems,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>
</header>