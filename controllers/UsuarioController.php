<?php

namespace app\controllers;

use Yii;
use app\models\Usuario;
use yii\web\Controller;
use yii\web\UploadedFile;
use yii\filters\VerbFilter;
use app\models\UsuarioSearch;
use yii\web\NotFoundHttpException;
use webvimark\modules\UserManagement\models\User;

/**
 * UsuarioController implements the CRUD actions for Usuario model.
 */
class UsuarioController extends Controller
{
    /**
     * @inheritDoc
     */
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

    /**
     * Lists all Usuario models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UsuarioSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Usuario model.
     * @param int $usu_id Id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Usuario model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $usuario = new Usuario();
        $user    = new User();

        if ($this->request->isPost && $usuario->load($this->request->post()) && $user->load($this->request->post())) {
            $user->auth_key        = Yii::$app->security->generateRandomString();
            $user->password_hash   = Yii::$app->security->generatePasswordHash($user->password);
            $user->status          = 1;
            $user->created_at      = time();
            $user->updated_at      = time();
            $user->email_confirmed = 1;
            $user->username = $user->email;
            if ($user->save()) {
                User::assignRole($user->id, "Normal");
                $usuario->usu_fkuser   = $user->id;
                $image = UploadedFile::getInstance($usuario, 'img'); //instanciamos la imagen
                if (!is_null($image)) {
                    $ext = explode(".", $image->name); //obtenemos la extension de la img
                    $ext = end($ext); //obtenemos la extension de la img
                    //guardamos la imagen con otro nombre para evitar repetir nombres
                    $usuario->usu_imagen = Yii::$app->security->generateRandomString() . ".{$ext}";
                    //variable para guardar la ruta donde se guarda la imagen
                    $path = Yii::$app->basePath . "/web/images/imagen-perfil-usuario/" . $usuario->usu_imagen;
                    //Condicionamos si se guardo la ruta y los datos al modelo
                    if ($image->saveAs($path) && $usuario->save()) {
                        return $this->redirect(Yii::$app->user->isSuperAdmin ? '/alumno/index' : '/site/login');
                    }
                } else {
                    if ($usuario->save()) {
                        return $this->redirect(Yii::$app->user->isSuperAdmin ? '/alumno/index' : '/site/login');
                        //return $this->redirect(['view', 'id' => $model->div_id]);
                    }
                }
            }
        }
        return $this->render('create', compact('usuario', 'user'));
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'usu_id' => $model->usu_id]);
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
        if (($model = Usuario::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
