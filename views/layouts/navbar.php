<?php

use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use webvimark\modules\UserManagement\models\User;
use webvimark\modules\UserManagement\UserManagementModule;

$usuario = app\models\Usuario::getUsuarioLogueado();
?>

<header>
    <?php
    NavBar::begin([
        'options' => [
            'class' => 'navbar navbar-expand-lg navbar-dark bg-primary fixed-top',
            'id' => "sideNav"
        ],
    ]);
    $menuItems = ['label' => '<a class="navbar-brand js-scroll-trigger" href="#page-top"><span class="d-block d-lg-none">Clarence Taylor</span><span class="d-none d-lg-block">'];
    if (!Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => '<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="' . $usuario->getUrl() . '" style="width:60%"/></span></a>', 'visible' => User::hasRole('Normal', false)];
    } else {
    }
    $menuItems[] = ['label' => '<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/images/imagen-perfil-usuario/usuario.png" style="width:60%"/></span></a>', 'visible' => Yii::$app->user->isSuperAdmin];
    $menuItems[] = '<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button><div class="collapse navbar-collapse" id="navbarResponsive"><ul class="navbar-nav">';
    $menuItems[] = ['label' => 'Inicio', 'url' => ['/'], 'options' => ['class' => 'nav-item'],  'visible' => User::hasRole('Normal')];
    $menuItems[] = ['label' => 'Mis Grupos', 'url' => ['/grupo'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Mi Cuenta', 'url' => ['/usuario/update'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = '</ul></div>';
    $menuItems[] = [
        'label' => 'Administrador',
        'items' => UserManagementModule::menuItems(),
        'options' => [
            'class' => '  list-inline-item last-item '
        ],
        'encodeLabels' => false,
        'visible' => User::hasRole('Admin'),
    ];


    //Invitado
    $menuItems[] = ['label' => 'Inicio', 'url' => ['/'], 'options' => ['class' => 'nav-item'], 'visible' => Yii::$app->user->isGuest];
    $menuItems[] = ['label' => 'Iniciar sesión', 'url' => ['/user-management/auth/login'], 'visible' => Yii::$app->user->isGuest];
    $menuItems[] = ['label' => 'Cerrar Sesión', 'url' => ['/user-management/auth/logout'], 'visible' => User::hasRole('Normal')];
    $menuItems[] = ['label' => 'Registrarse', 'url' => ['/usuario/create'], 'options' => ['class' => 'nav-item'], 'visible' => Yii::$app->user->isGuest];

    echo Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => $menuItems,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>
</header>