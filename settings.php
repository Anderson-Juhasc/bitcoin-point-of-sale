<?php include 'partials/header.php'; ?>

<?php
    if ($_SESSION['auth'] != 1) {
        unset($_SESSION['auth']);

        header('Location: index.php');
        exit();
    }
?>

<?php if ($_POST) : ?>

    <?php
        if (isset($_POST["general"])) {
            $config_site_title = $_POST["config-site-title"];
            $config_currency = $_POST["config-currency"];
            $config_address = $_POST["config-address"];

            $db = new Db();

            $db->query("UPDATE
                        config SET config_site_title = :config_site_title, config_currency = :config_currency, config_address = :config_address
                        WHERE config_id = :config_id",
                        array("config_site_title"=>"$config_site_title", "config_currency"=>"$config_currency", "config_address"=> "$config_address", "config_id"=>"1")
            );

            header('Location: index.php');
        }

        if (isset($_POST["change-password"])) {
            //$current_password = $_POST["current-password"];
            $new_password = $_POST["new-password"];
            $confirm_new_password = $_POST["confirm-new-password"];

            if ($new_password == $confirm_new_password) {

                $new_password = md5($new_password);

                $db = new Db();

                $db->query("UPDATE
                            users SET user_password = :user_password WHERE user_id = :user_id",
                            array("user_password"=>"$new_password", "user_id"=>$_SESSION['user_id'])
                );

                header('Location: index.php');
            }
        }
    ?>

<?php else : ?>

    <!-- .wrapper -->
    <div class="wrapper">
        <!-- .page -->
        <div class="page">
            <!-- .page__head -->
            <header class="page__head">
                <h2 class="page__title">Settings</h2>
            </header>
            <!-- /.page__head -->

            <!-- .page__body -->
            <div class="page__body">
                <?php if ($_SESSION['user_type'] == "admin") : ?>
                <!-- .page__form -->
                <form action="<?php $_SERVER["PHP_SELF"] ?>" method="POST" class="page__form">
                    <h4>General</h4>

                    <!-- .fields -->
                    <ul class="fields">
                        <li>
                            <label for="" class="fields__label">Title of site:</label>
                            <input value="<?php echo $config[0]["config_site_title"] ?>" class="fields__input input input--full" name="config-site-title" required type="text" />
                        </li>

                        <li>
                            <label for="" class="fields__label">Currency default:</label>
                            <select id="" name="config-currency">
                                <option value="USD">USD</option>
                                <option value="ISK">ISK</option>
                                <option value="HKD">HKD</option>
                                <option value="TWD">TWD</option>
                                <option value="CHF">CHF</option>
                                <option value="EUR">EUR</option>
                                <option value="DKK">DKK</option>
                                <option value="CLP">CLP</option>
                                <option value="CAD">CAD</option>
                                <option value="CNY">CNY</option>
                                <option value="THB">THB</option>
                                <option value="AUD">AUD</option>
                                <option value="SGD">SGD</option>
                                <option value="KRW">KRW</option>
                                <option value="JPY">JPY</option>
                                <option value="PLN">PLN</option>
                                <option value="GBP">GBP</option>
                                <option value="SEK">SEK</option>
                                <option value="NZD">NZD</option>
                                <option value="BRL">BRL</option>
                                <option value="RUB">RUB</option>
                            </select>
                        </li>

                        <li>
                            <label for="" class="fields__label">Receiving address:</label>
                            <input class="fields__input input input--full" value="<?php echo $config[0]["config_address"] ?>" name="config-address" required type="text" />
                        </li>
                    </ul>
                    <!-- /.fields -->

                    <!-- .fields-action -->
                    <div class="fields-action">
                        <button type="submit" name="general" class="fields-action__btn btn btn--secondary">Save</button>
                    </div>
                    <!-- /.fields-action -->
                </form>
                <!-- /.page__form -->
                <?php endif; ?>

                <!-- .page__form -->
                <form action="<?php $_SERVER["PHP_SELF"] ?>" method="POST" class="page__form">
                    <h4>Change password</h4>

                    <!-- .fields -->
                    <ul class="fields">
                        <li>
                            <label for="" class="fields__label">New password:</label>
                            <input id="" class="fields__input input input--full" valeu="" name="new-password" required type="password" />
                        </li>

                        <li>
                            <label for="" class="fields__label">Confirm new password:</label>
                            <input id="" class="fields__input input input--full" valeu="" name="confirm-new-password" required type="password" />
                        </li>
                    </ul>
                    <!-- /.fields -->

                    <!-- .fields-action -->
                    <div class="fields-action">
                        <button type="submit" name="change-password" class="fields-action__btn btn btn--secondary">Save</button>
                    </div>
                    <!-- /.fields-action -->
                </form>
                <!-- /.page__form -->
            </div>
            <!-- /.page__body -->
        </div>
        <!-- /.page -->
    </div>
    <!-- /.wrapper -->

<?php endif; ?>

<?php include 'partials/footer.php'; ?>
