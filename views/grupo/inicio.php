<?php
/* @var $this yii\web\View */
?>
<!-- Section-->
<section class="py-5" style="background:white;">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <?php foreach ($grupos as $grp) {
                $grp = (object)$grp; ?>
                <div class="col mb-5">
                    <div class="card h-100" style="align-items:center; padding-top:1rem;">
                        <!-- Product image-->
                        <img class="card-img-top" style="width:50%" src="/botones/usuario.png" />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder"><?= $grp->gru_nombre ?></h5>
                                <!-- Product price-->
                                <?= $grp->gru_descripcion ?>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"> Ver tablas</a></div>
                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>
</section>