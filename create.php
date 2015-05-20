<?php include 'partials/header.php'; ?>

<?php
    if ($_SESSION['auth'] != 1) {
        unset($_SESSION['auth']);

        header('Location: index.php');
        exit();
    }
?>

<?php if (isset($_POST["invoice"])) : ?>

<?php
    $receivingAddress = $config[0]["config_address"];

    $user_id = $_SESSION['user_id'];
    $newAddr = json_decode(file_get_contents("https://blockchain.info/api/receive?method=create&address=$receivingAddress"), true)[input_address];
    $currency = $_POST['currency'];
    $currency_value = number_format($_POST['value'], 2);
    $invoice_btc_value = $_POST['btcValue'];
    $note = $_POST['note'];
    $date = date("D M d Y H:i:s O");
    $date_expiry = date("D M d Y H:i:s O", strtotime($date) + 900);

	$db = new Db();

    $db->query("INSERT INTO
                invoices(invoice_user_id, invoice_address, invoice_fiat, invoice_fiat_value, invoice_btc_value, invoice_paid, invoice_date, invoice_date_expiry, invoice_note)
                VALUES('$user_id', '$newAddr', '$currency', '$currency_value', '$invoice_btc_value', '0', '$date', '$date_expiry', '$note')"
    );

    header('Location: invoice.php?id=' . $db->lastInsertId());
?>

<?php else : ?>

<?php
    $currencies = json_decode(file_get_contents("https://blockchain.info/ticker"), true);

    $currency_default = $config[0]["config_currency"];

    if (isset($_GET["currency"])) {
        $currency_default = $_GET["currency"];
    }
    $quote = $currencies[$currency_default]["sell"];
    $symbol = $currencies[$currency_default]["symbol"];
?>

    <!-- .wrapper -->
    <div class="wrapper">
        <div style="display: none; margin-bottom:12px;">
            <label for="">Endereço de recebimento:</label>
            <br />
            <input id="" name="" type="text" value="" />
            <button class="btn">Adicionar</button>
        </div>

        <!-- .page -->
        <div class="page">
            <!-- .page__head -->
            <header class="page__head">
                <h2 class="page__title">New invoice</h2>
            </header>
            <!-- /.page__head -->

            <!-- .page__body -->
            <div class="page__body">
                <!-- .page__cell -->
                <div class="page__cell">
                    <form action="<?php $_SERVER["PHP_SELF"] ?>" method="POST" autocomplete="off">
                        <!-- .fields -->
                        <ul class="fields">
                            <li>
                                <label for="" class="fields__label">Quotation:</label>
                                <?php echo $symbol . ' ' . $quote; ?>
                            </li>
                            <li>
                                <label for="" class="fields__label">Currency:</label>
                                <select id="select-currency" name="currency">
                                    <?php foreach ($currencies as $currency => $value) : ?>
                                        <option value="<?php echo $currency; ?>" <?php if ($currency == $currency_default) : ?>selected<?php endIf; ?>><?php echo $currency; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </li>
                            <li>
                                <label for="" class="fields__label">Value:</label>
                                <input id="value" class="fields__input input input--full" name="value" data-quote="<?php echo $quote; ?>" required type="text">
                            </li>
                            <li>
                                <label for="" class="fields__label">Total in BTC:</label>
                                <input id="btcValue" class="fields__input input input--full" name="btcValue" required type="text" />
                            </li>
                            <li>
                                <label for="" class="fields__label">Note:</label>
                                <textarea class="textarea textarea--full" name="note" rows="3"></textarea>
                            </li>
                        </ul>
                        <!-- /.fields -->

                        <!-- .fields-action -->
                        <div class="fields-action">
                            <button type="submit" name="invoice" class="fields-action__btn btn btn--secondary btn--medium">Create invoice</button>
                        </div>
                        <!-- /.fields-action -->
                    </form>
                </div>
                <!-- /.page__cell -->

                <!-- .page__cell -->
                <div class="page__cell">
                </div>
                <!-- /.page__cell -->
            </div>
            <!-- /.page__body -->
        </div>
        <!-- /.page -->
    </div>
    <!-- /.wrapper -->

    <script type="text/javascript">
        $(document).ready(function() {
            $("#value").on("change paste keyup", function() {
                var val = $(this).val(),
                    quote = $(this).data("quote"),
                    oneFiatinSatoshis = 100000000 / quote,
                    valInSatoshis = val * oneFiatinSatoshis,
                    valInBTC = valInSatoshis / 100000000;

                $("#btcValue").val(valInBTC.toFixed(8));
            });

            $("#select-currency").on("change", function() {
                window.location = "create.php?currency=" + $(this).val();
            });
        });
    </script>

<?php endif; ?>

<?php include 'partials/footer.php'; ?>
