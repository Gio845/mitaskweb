<?php

use yii\helpers\Html;
use yii\bootstrap4\Modal;
use kartik\file\FileInput;
use yii\bootstrap4\ActiveForm;
use webvimark\modules\UserManagement\models\User;
?>
<div class="row align-items-center justify-content-center">
    <div class="col-lg-10 col-md-12 col-12">
        <?php $form = ActiveForm::begin(); ?>
        <div class="checkbox-form">
            <?php if (User::hasrole('Normal', false)) { ?>
                <h3>TUS DATOS PERSONALES</h3>
            <?php } ?>
            <div class="row">
                <div class="col-md-6">
                    <?= $form->field($usuario, 'usu_nombre')->textInput(['maxlength' => true]) ?>
                </div>
                <div class="col-md-6">
                    <?= $form->field($usuario, 'usu_materno')->textInput(['maxlength' => true]) ?>
                </div>
                <div class="col-md-6">
                    <?= $form->field($usuario, 'usu_paterno')->textInput(['maxlength' => true]) ?>
                </div>
                <div class="col-md-6">
                    <?= $form->field($user, 'username')->textInput(['maxlength' => 255])->label("Correo Electronico") ?>
                </div>
                <?php if (!empty($user->username)) { ?>
                    <?php
                    Modal::begin([
                        // 'title' => 'Cambiar Contraseña',
                        // 'titleOptions' => ['label' => 'asd', 'style' => 'color: #000;', 'class' => 'col-md-12'],
                        'toggleButton' => ['label' => 'Cambiar Contraseña', 'class' => 'col-md-12 btn btn-primary', 'style' => ''],
                        'bodyOptions' => ['class' => 'row'],
                        'closeButton' =>  false, //['label' => "X", 'style' => 'color: #000;'],
                    ]); ?>
                    <div class="col-md-12">
                        <?= $form->field($user, 'password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                    </div>
                    <div class="col-md-12">
                        <?= $form->field($user, 'repeat_password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                    </div>
                    <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
                    <?php Modal::end(); ?>
                <?php } else { ?>
                    <div class="col-md-12">
                        <?= $form->field($user, 'password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                    </div>
                    <div class="col-md-12">
                        <?= $form->field($user, 'repeat_password')->passwordInput(['maxlength' => 255, 'autocomplete' => 'off']) ?>
                    </div>

                <?php } ?>

                <div class="col-md-6">
                    <?= $form->field($usuario, 'img')->widget(
                        FileInput::classname(),
                        [
                            'options'       => ['accept' => 'image/*'],
                            'language'      => 'es',
                            'pluginOptions' => [
                                'allowedFileExtensions' =>  ['jpg', 'gif', 'png'],
                                'initialPreview'        => [$usuario->getUrl()],
                                'initialPreviewAsData'  => true,
                                'showCaption'           => false,
                                'showRemove'            => false,
                                'showUpload'            => false,
                                //'browseClass'           => 'btn btn-primary btn-block',
                                'browseIcon'            => '<i class="fas fa-camera"></i> ',
                                'browseLabel'           =>  'Seleccione una foto',
                            ],
                        ]
                    );
                    ?>
                </div>
                <div class="col-md-6 align-items-end text-right clearflix">
                    <?= Html::submitButton('Guardar', ['class' => 'btn btn-success', 'style' => 'margin-top:80%;']) ?>
                </div>
                <!-- <div class="col-md-6">
                    <div class="checkout-form-list">
                        <label>Last Name <span class="required">*</span></label>
                        <input type="text" placeholder="" />
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="checkout-form-list">
                        <label>Company Name</label>
                        <input type="text" placeholder="" />
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="checkout-form-list">
                        <label>Address <span class="required">*</span></label>
                        <input type="text" placeholder="Street address" />
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="checkout-form-list">
                        <input type="text" placeholder="Apartment, suite, unit etc. (optional)" />
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="checkout-form-list">
                        <label>Town / City <span class="required">*</span></label>
                        <input type="text" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="checkout-form-list">
                        <label>State / County <span class="required">*</span></label>
                        <input type="text" placeholder="" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="checkout-form-list">
                        <label>Postcode / Zip <span class="required">*</span></label>
                        <input type="text" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="checkout-form-list">
                        <label>Email Address <span class="required">*</span></label>
                        <input type="email" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="checkout-form-list">
                        <label>Phone <span class="required">*</span></label>
                        <input type="text" />
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="checkout-form-list create-acc">
                        <input id="cbox" type="checkbox" />
                        <label>Create an account?</label>
                    </div>
                    <div id="cbox_info" class="checkout-form-list create-account">
                        <p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
                        <label>Account password <span class="required">*</span></label>
                        <input type="password" placeholder="password" />
                    </div>
                </div> -->
            </div>
            <!-- <div class="different-address">
                <div class="ship-different-title">
                    <h3>
                        <label>Ship to a different address?</label>
                        <input id="ship-box" type="checkbox" />
                    </h3>
                </div>
                <div id="ship-box-info" class="row">
                    <div class="col-md-12">
                        <div class="country-select">
                            <label>Country <span class="required">*</span></label>
                            <select>
                                <option value="volvo">bangladesh</option>
                                <option value="saab">Algeria</option>
                                <option value="mercedes">Afghanistan</option>
                                <option value="audi">Ghana</option>
                                <option value="audi2">Albania</option>
                                <option value="audi3">Bahrain</option>
                                <option value="audi4">Colombia</option>
                                <option value="audi5">Dominican Republic</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>First Name <span class="required">*</span></label>
                            <input type="text" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Last Name <span class="required">*</span></label>
                            <input type="text" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Company Name</label>
                            <input type="text" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Address <span class="required">*</span></label>
                            <input type="text" placeholder="Street address" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <input type="text" placeholder="Apartment, suite, unit etc. (optional)" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Town / City <span class="required">*</span></label>
                            <input type="text" placeholder="Town / City" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>State / County <span class="required">*</span></label>
                            <input type="text" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Postcode / Zip <span class="required">*</span></label>
                            <input type="text" placeholder="Postcode / Zip" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Email Address <span class="required">*</span></label>
                            <input type="email" placeholder="" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="checkout-form-list">
                            <label>Phone <span class="required">*</span></label>
                            <input type="text" placeholder="Postcode / Zip" />
                        </div>
                    </div>
                </div>
                <div class="order-notes">
                    <div class="checkout-form-list mrg-nn">
                        <label>Order Notes</label>
                        <textarea id="checkout-mess" cols="30" rows="10" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                    </div>
                </div>
            </div> -->
        </div>
        <?php ActiveForm::end(); ?>
    </div>
    <!-- <div class="col-lg-6 col-md-12 col-12">
        <div class="your-order">
            <h3>Your order</h3>
            <div class="your-order-table table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th class="product-name">Product</th>
                            <th class="product-total">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="cart_item">
                            <td class="product-name">
                                Vestibulum suscipit <strong class="product-quantity"> × 1</strong>
                            </td>
                            <td class="product-total">
                                <span class="amount">£165.00</span>
                            </td>
                        </tr>
                        <tr class="cart_item">
                            <td class="product-name">
                                Vestibulum dictum magna <strong class="product-quantity"> × 1</strong>
                            </td>
                            <td class="product-total">
                                <span class="amount">£50.00</span>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr class="cart-subtotal">
                            <th>Cart Subtotal</th>
                            <td><span class="amount">£215.00</span></td>
                        </tr>
                        <tr class="order-total">
                            <th>Order Total</th>
                            <td><strong><span class="amount">£215.00</span></strong>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="payment-method">
                <div class="payment-accordion">
                    <div class="panel-group" id="faq">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title"><a data-toggle="collapse" aria-expanded="true" data-parent="#faq" href="#payment-1">Direct Bank Transfer.</a></h5>
                            </div>
                            <div id="payment-1" class="panel-collapse collapse show">
                                <div class="panel-body">
                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title"><a class="collapsed" data-toggle="collapse" aria-expanded="false" data-parent="#faq" href="#payment-2">Cheque Payment</a></h5>
                            </div>
                            <div id="payment-2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5 class="panel-title"><a class="collapsed" data-toggle="collapse" aria-expanded="false" data-parent="#faq" href="#payment-3">PayPal</a></h5>
                            </div>
                            <div id="payment-3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="order-button-payment">
                        <input type="submit" value="Place order" />
                    </div>
                </div>
            </div>
        </div>
    </div> -->
</div>