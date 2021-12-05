<?php

namespace app\controllers;

use Yii;
use yii\web\Response;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\bootstrap4\ActiveForm;
use webvimark\modules\UserManagement\models\User;
use webvimark\modules\UserManagement\models\forms\LoginForm;

class SiteController extends Controller
{
    public  $freeAccessActions = ['login', 'index'];

    public function behaviors()
    {
        return [
            'ghost-access' => [
                'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl',
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
        $vista = 'site/login';
        if (Yii::$app->user->isSuperAdmin) {
            $vista = 'superadmin/index';
            return $this->render($vista);
        } else if (User::hasRole('Normal', false)) {
            $vista = 'normal/index';
            return $this->render($vista);
        } else {
            $vista = 'index';
            return $this->render($vista);
        }
        return $this->redirect($vista);
    }

    /*public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';
        return $this->render('login', [
            'model' => $model,
        ]);
    }*/

    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $model = new LoginForm();
        if (Yii::$app->request->isAjax and $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }
        if ($model->load(Yii::$app->request->post()) and $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', compact('model'));
    }

    public function actionAbout()
    {
        return $this->render('about');
    }
    public function actionSubmenu($nombre)
    {
        return $this->render('superadmin/submenu', compact('nombre'));
    }
}
