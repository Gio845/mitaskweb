<?php

use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use webvimark\modules\UserManagement\models\User;
use webvimark\modules\UserManagement\UserManagementModule;

$usuario = app\models\Usuario::getUsuarioLogueado();
?>

<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none">Clarence Taylor</span>
      <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="plantilla/dist2/assets/img/profile.jpg" alt="..." /></span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Interests</a></li>
        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Awards</a></li>
      </ul>
    </div>
  </nav> -->

<header>
    <?php
    NavBar::begin([
        // 'brandLabel' => Yii::$app->name,
        // 'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar navbar-expand-lg navbar-dark bg-primary fixed-top',
            'id' => "sideNav"
        ],
    ]);
    // $menuItems = ['<a class="navbar-brand js-scroll-trigger" href="#page-top">
    //     <span class="d-block d-lg-none">Clarence Taylor</span>
    //     <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/plantilla/dist2/assets/img/profile.jpg" alt="..." /></span>
    // </a>'];
    $menuItems = [
        'label' => '<a class="navbar-brand js-scroll-trigger" href="#page-top"><span class="d-block d-lg-none">Clarence Taylor</span><span class="d-none d-lg-block">',
    ];
    $menuItems = ['label' => '<img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="' . $usuario->getUrl() . '" style="width:60%"/></span>
    </a>'];
    $menuItems[] = '<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>';
    $menuItems[] = '<div class="collapse navbar-collapse" id="navbarResponsive">';
    $menuItems[] = '<ul class="navbar-nav">';
    $menuItems[] = ['label' => 'Inicio', 'url' => ['/'], 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Mis Grupos', 'url' => ['/grupo'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = '</ul>';
    $menuItems[] = '</div>';
    $menuItems[] = [
        'label' => 'Administrador',
        'items' => UserManagementModule::menuItems(),
        'options' => [
            'class' => '  list-inline-item last-item '
        ],
        'encodeLabels' => false,
        'visible' => User::hasRole('Admin'),
    ];
    Yii::$app->user->isGuest ?  $menuItems[] = (['label' => 'Iniciar sesión', 'url' => ['/user-management/auth/login'],]) :
        $menuItems[] = (['label' => 'Cerrar Sesión', 'url' => ['/user-management/auth/logout'],]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => $menuItems,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>
</header>