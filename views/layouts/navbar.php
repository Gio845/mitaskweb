<?php

use yii\helpers\Html;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use webvimark\modules\UserManagement\models\User;
use webvimark\modules\UserManagement\UserManagementModule;

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
    $menuItems = [
        ['label' => 'Inicio', 'url' => ['/site/index'], 'visible' => User::hasRole('Admin')],

    ];
    //     $menuItems[] = '<a class="navbar-brand js-scroll-trigger" href="#page-top">
    //     <span class="d-block d-lg-none">Clarence Taylor</span>
    //     <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="plantilla/dist2/assets/img/profile.jpg" alt="..." /></span>
    //   </a>
    //   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    //   <div class="collapse navbar-collapse" id="navbarResponsive">
    //     <ul class="navbar-nav">
    //       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
    //       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
    //       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
    //       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
    //       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Interests</a></li>
    //       <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Awards</a></li>
    //     </ul>
    //   </div>';
    $menuItems[] = '<a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Clarence Taylor</span>
        <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="plantilla/dist2/assets/img/profile.jpg" alt="..." /></span>
    </a>';
    $menuItems[] = '<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>';

    $menuItems[] = '<div class="collapse navbar-collapse" id="navbarResponsive">';
    $menuItems[] = '<ul class="navbar-nav">';
    $menuItems[] = ['label' => 'About', 'url' => ['#'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Experience', 'url' => ['#'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Education', 'url' => ['#'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Skills', 'url' => ['#'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Interests', 'url' => ['#'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
    $menuItems[] = ['label' => 'Awards', 'url' => ['#'], 'visible' => User::hasRole('Normal', false), 'options' => ['class' => 'nav-item']];
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

    // Yii::$app->user->isGuest ?  $menuItems[] = (['label' => 'Iniciar sesión', 'url' => ['/user-management/auth/login'], 'visible' => User::hasRole('Admin')]) :  $menuItems[] = ('<li>'
    //     . Html::beginForm(['/user-management/auth/logout'], 'post', ['class' => 'form-inline'],)
    //     . Html::submitButton(
    //         'Logout (' . Yii::$app->user->identity->username . ')',
    //         ['class' => 'btn btn-link logout']
    //     )
    //     . Html::endForm()
    //     . '</li>');
    Yii::$app->user->isGuest ?  $menuItems[] = (['label' => 'Iniciar sesión', 'url' => ['/user-management/auth/login'], 'visible' => User::hasRole('Admin')]) :
        $menuItems[] = (['label' => 'Cerrar Sesión', 'url' => ['/user-management/auth/logout'], 'visible' => User::hasRole('Admin')]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav'],
        'items' => $menuItems,
        'encodeLabels' => false,
    ]);
    NavBar::end();
    ?>
</header>