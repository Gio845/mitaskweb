<?php

namespace app\controllers;

use app\models\Grupo;
use app\models\Usuario;
use yii\web\Controller;
use app\models\GrupoSearch;
use yii\filters\VerbFilter;
use yii\web\NotFoundHttpException;
use webvimark\modules\UserManagement\models\User;

/**
 * GrupoController implements the CRUD actions for Grupo model.
 */
class GrupoController extends Controller
{
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'ghost-access' => [
                    'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl',
                ],
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    public function actionIndex()
    {
        $searchModel = new GrupoSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        if (User::hasrole("Normal", false)) {
            $grupos = Grupo::getUsuarioGrupo();
            return $this->render('inicio', compact('grupos'));
        } else {
            return $this->render('index', [
                'searchModel' => $searchModel,
                'dataProvider' => $dataProvider,
            ]);
        }
    }

    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionCreate()
    {
        $model = new Grupo();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                if (User::hasrole("Normal", false)) {
                    $model->gru_fkusuario = Usuario::getUsuarioLogueado()->usu_id;
                }
                if ($model->save()) {
                    if (User::hasrole("Normal", false)) {
                        return $this->redirect(['/grupo']);
                    } else {
                        return $this->redirect(['view', 'id' => $model->gru_id]);
                    }
                }
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->gru_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Grupo::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
