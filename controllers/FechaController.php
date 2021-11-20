<?php

namespace app\controllers;

use app\models\Fecha;
use app\models\FechaSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * FechaController implements the CRUD actions for Fecha model.
 */
class FechaController extends Controller
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
     * Lists all Fecha models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new FechaSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Fecha model.
     * @param int $fec_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($fec_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($fec_id),
        ]);
    }

    /**
     * Creates a new Fecha model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Fecha();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'fec_id' => $model->fec_id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Fecha model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $fec_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($fec_id)
    {
        $model = $this->findModel($fec_id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'fec_id' => $model->fec_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Fecha model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $fec_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($fec_id)
    {
        $this->findModel($fec_id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Fecha model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $fec_id Id
     * @return Fecha the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($fec_id)
    {
        if (($model = Fecha::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
