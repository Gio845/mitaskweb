<?php

/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //plantilla3
        'plantilla/dist3/css/templatemo-softy-pinko.css',


        'css/site.css',
        'plantilla/dist/style.css',
        'https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css',
        //'https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css',
        'https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome-font-awesome.min.css',
        'https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/css/datepicker.css',
        "https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap",
        "https://fonts.googleapis.com/css?family=Nunito:400,600,700&display=swap",


        //plantilla2
        'plantilla/dist2/css/styles.css',
        'https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700',
        'https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i',

        //plantilla3
        //'plantilla/dist3/css/bootstrap.min.css',
        //'plantilla/dist3/css/flex-slider.css',
        //'plantilla/dist3/css/font-awesome.css',



    ];
    public $js = [
        'plantilla/dist/script.js',
        //'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js',
        'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js',
        'https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js',
        'https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.js',
        'https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js',
        'https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/js/datepicker.js',
        'https://cdnjs.cloudflare.com/ajax/libs/air-datepicker/2.2.3/js/i18n/datepicker.en.js',


        //plantilla2
        'plantilla/dist2/js/scripts.js',
        'https://use.fontawesome.com/releases/v5.15.4/js/all.js',
        //'https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js',

    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap4\BootstrapAsset',
    ];
}
