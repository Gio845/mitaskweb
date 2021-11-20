<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "fecha".
 *
 * @property int $fec_id Id
 * @property string $fec_fecha Fecha
 * @property int $fec_fktarea Tarea
 *
 * @property Tarea $fecFktarea
 */
class Fecha extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'fecha';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fec_fecha', 'fec_fktarea'], 'required'],
            [['fec_fecha'], 'safe'],
            [['fec_fktarea'], 'integer'],
            [['fec_fktarea'], 'exist', 'skipOnError' => true, 'targetClass' => Tarea::className(), 'targetAttribute' => ['fec_fktarea' => 'tar_id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'fec_id' => 'Id',
            'fec_fecha' => 'Fecha',
            'fec_fktarea' => 'Tarea',
        ];
    }

    /**
     * Gets query for [[FecFktarea]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getFecFktarea()
    {
        return $this->hasOne(Tarea::className(), ['tar_id' => 'fec_fktarea']);
    }
}
