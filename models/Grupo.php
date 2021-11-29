<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "grupo".
 *
 * @property int $gru_id Id
 * @property string $gru_nombre Nombre
 * @property string|null $gru_descripcion Descripción
 * @property int $gru_fkusuario Usuario
 *
 * @property Usuario $gruFkusuario
 * @property Tarea[] $tareas
 */
class Grupo extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'grupo';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['gru_nombre', 'gru_fkusuario'], 'required'],
            [['gru_descripcion'], 'string'],
            [['gru_fkusuario'], 'integer'],
            [['gru_nombre'], 'string', 'max' => 30],
            [['gru_fkusuario'], 'exist', 'skipOnError' => true, 'targetClass' => Usuario::className(), 'targetAttribute' => ['gru_fkusuario' => 'usu_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'gru_id' => 'Id',
            'gru_nombre' => 'Nombre',
            'gru_descripcion' => 'Descripción',
            'gru_fkusuario' => 'Usuario',
        ];
    }

    /**
     * Gets query for [[GruFkusuario]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getGruFkusuario()
    {
        return $this->hasOne(Usuario::className(), ['usu_id' => 'gru_fkusuario']);
    }

    /**
     * Gets query for [[Tareas]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTareas()
    {
        return $this->hasMany(Tarea::className(), ['tar_fkgrupo' => 'gru_id']);
    }

    //Esta funcion trae todos los grupos que tiene el usuario que esta logeado
    public function getUsuarioGrupo()
    {
        return self::find()->where(['gru_fkusuario' => Usuario::getUsuarioLogueado()->usu_id])->all();
    }
}
