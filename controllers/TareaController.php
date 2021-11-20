<?php

namespace app\controllers;

use app\models\Tarea;
use app\models\TareaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * TareaController implements the CRUD actions for Tarea model.
 */
class TareaController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Tarea models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TareaSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Tarea model.
     * @param int $tar_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($tar_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($tar_id),
        ]);
    }

    /**
     * Creates a new Tarea model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Tarea();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'tar_id' => $model->tar_id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Tarea model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $tar_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($tar_id)
    {
        $model = $this->findModel($tar_id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'tar_id' => $model->tar_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Tarea model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $tar_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($tar_id)
    {
        $this->findModel($tar_id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Tarea model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $tar_id Id
     * @return Tarea the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($tar_id)
    {
        if (($model = Tarea::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
