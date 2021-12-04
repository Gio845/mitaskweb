<?php

namespace app\models;

use Yii;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "usuario".
 *
 * @property int $usu_id Id
 * @property string $usu_nombre Nombre
 * @property string $usu_materno Apellido Materno
 * @property string $usu_paterno Apellido Paterno
 * @property string|null $usu_imagen Imagen
 * @property int $usu_fkuser User
 *
 * @property Grupo[] $grupos
 * @property User $usuFkuser
 */
class Usuario extends \yii\db\ActiveRecord
{

    public $img;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['usu_nombre', 'usu_materno', 'usu_paterno', 'usu_fkuser'], 'required'],
            [['usu_fkuser'], 'integer'],
            [['usu_nombre'], 'string', 'max' => 50],
            [['usu_materno', 'usu_paterno'], 'string', 'max' => 40],
            [['usu_imagen'], 'string', 'max' => 150],
            [['img'], 'safe'],
            [['img'], 'file', 'extensions'   => 'jpg, gif, png'],
            [['img'], 'file', 'maxSize'      => '500000'],
            [['usu_fkuser'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['usu_fkuser' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'usu_id'      => 'Id',
            'usu_nombre'  => 'Nombre',
            'usu_materno' => 'Apellido Materno',
            'usu_paterno' => 'Apellido Paterno',
            'usu_imagen'  => 'Imagen',
            'img'         => 'Imagen',
            'usu_fkuser'  => 'User',
        ];
    }

    /**
     * Gets query for [[Grupos]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getGrupos()
    {
        return $this->hasMany(Grupo::className(), ['gru_fkusuario' => 'usu_id']);
    }

    /**
     * Gets query for [[UsuFkuser]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuFkuser()
    {
        return $this->hasOne(User::className(), ['id' => 'usu_fkuser']);
    }
    public function getImagen()
    {
        return Html::img($this->getUrl(), ['width' => '30%', 'height' => '30%']);
    }

    public function getUrl()
    {
        return "/images/" . (empty($this->usu_imagen) ? 'imagen-perfil-usuario/usuario.png' : "imagen-perfil-usuario/{$this->usu_imagen}");
    }

    //Esta funcion trae los datos de la tabla usuario del que esta logueado
    public static function getUsuarioLogueado()
    {
        return Usuario::find()->where(['usu_fkuser' => Yii::$app->user->id,])->one();
    }

    //Te devuelve todos los usuario registrados en forma de array se usa para los select2 usualmente. 
    public static function mapUsuario()
    {
        return ArrayHelper::map(Usuario::find()->all(), 'usu_id', 'usu_nombre');
    }
}
