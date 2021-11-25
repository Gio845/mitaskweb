<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tarea".
 *
 * @property int $tar_id Id
 * @property string $tar_nombre Nombre
 * @property string|null $tar_descripcion Descripción
 * @property string $tar_registro Registro
 * @property int $tar_estatus Estatus
 * @property int $tar_privacidad Privacidad
 * @property int $tar_fkgrupo Grupo
 *
 * @property Fecha[] $fechas
 * @property Grupo $tarFkgrupo
 */
class Tarea extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tarea';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tar_nombre', 'tar_registro', 'tar_estatus', 'tar_privacidad', 'tar_fkgrupo'], 'required'],
            [['tar_descripcion'], 'string'],
            [['tar_registro'], 'safe'],
            [['tar_estatus', 'tar_privacidad', 'tar_fkgrupo'], 'integer'],
            [['tar_nombre'], 'string', 'max' => 30],
            [['tar_fkgrupo'], 'exist', 'skipOnError' => true, 'targetClass' => Grupo::className(), 'targetAttribute' => ['tar_fkgrupo' => 'gru_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'tar_id' => 'Id',
            'tar_nombre' => '     ',
            'tar_descripcion' => 'Descripción',
            'tar_registro' => 'Registro',
            'tar_estatus' => 'Estatus',
            'tar_privacidad' => 'Privacidad',
            'tar_fkgrupo' => 'Grupo',
        ];
    }

    /**
     * Gets query for [[Fechas]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getFechas()
    {
        return $this->hasMany(Fecha::className(), ['fec_fktarea' => 'tar_id']);
    }

    /**
     * Gets query for [[TarFkgrupo]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTarFkgrupo()
    {
        return $this->hasOne(Grupo::className(), ['gru_id' => 'tar_fkgrupo']);
    }
}
