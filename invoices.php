<?php include 'partials/header.php'; ?>

<?php
    if ($_SESSION['auth'] != 1) {
        unset($_SESSION['auth']);

        header('Location: index.php');
        exit();
    }

	$db = new Db();

    if ($_SESSION['user_type'] == "admin") {
        $invoices = $db->query("SELECT * FROM invoices ORDER BY invoice_id DESC");
    } else {
        $invoices = $db->query("SELECT * FROM invoices WHERE invoice_user_id = :id ORDER BY invoice_id DESC", array("id"=>$_SESSION['user_id']));
    }
?>

    <!-- .wrapper -->
    <div class="wrapper">
        <!-- .page -->
        <div class="page">
            <!-- .page__head -->
            <header class="page__head">
                <h2 class="page__title">Invoices</h2>
            </header>
            <!-- /.page__head -->

            <!-- .page__body -->
            <div class="page__body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Data</th>
                            <th>Value in BTC</th>
                            <th>Value in Fiat</th>
                            <th>Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($invoices as $key) : ?>
                        <?php
                        $invoice_date = strtotime($key["invoice_date"]);
                        ?>
                        <tr>
                            <td><?php echo $key["invoice_id"]; ?></td>
                            <td><?php echo date('Y-m-d', $invoice_date); ?></td>
                            <td><?php echo $key["invoice_btc_value"]; ?> BTC</td>
                            <td><?php echo $key["invoice_fiat"]; ?> <?php echo $key["invoice_fiat_value"]; ?></td>
                            <td>
                                <a href="invoice.php?id=<?php echo $key["invoice_id"]; ?>"><?php echo $key["invoice_address"]; ?></a>
                            </td>
                        </tr>
                        <?php endForeach; ?>
                    </tbody>
                </table>
            </div>
            <!-- /.page__body -->
        </div>
        <!-- /.page -->
    </div>
    <!-- /.wrapper -->

<?php include 'partials/footer.php'; ?>
