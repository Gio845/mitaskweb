<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Tarea;

/**
 * TareaSearch represents the model behind the search form of `app\models\Tarea`.
 */
class TareaSearch extends Tarea
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tar_id', 'tar_estatus', 'tar_privacidad', 'tar_fkgrupo'], 'integer'],
            [['tar_nombre', 'tar_descripcion', 'tar_registro'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Tarea::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'tar_id' => $this->tar_id,
            'tar_registro' => $this->tar_registro,
            'tar_estatus' => $this->tar_estatus,
            'tar_privacidad' => $this->tar_privacidad,
            'tar_fkgrupo' => $this->tar_fkgrupo,
        ]);

        $query->andFilterWhere(['like', 'tar_nombre', $this->tar_nombre])
            ->andFilterWhere(['like', 'tar_descripcion', $this->tar_descripcion]);

        return $dataProvider;
    }
}
