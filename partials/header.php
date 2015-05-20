<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link media="all" rel="stylesheet" href="assets/css/style.css" type="text/css" />
    <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
</head>
<body>
    <?php session_start(); ?>
    <?php
        if (isset($_GET['logout']) && $_GET['logout'] == 'ok') {
            unset($_SESSION['auth']);
            session_destroy();

            header('Location: index.php');
        }
    ?>

    <?php
        include("partials/PDO/Db.class.php");

        $db = new Db();

        $config = $db->query("SELECT * FROM config LIMIT 1");
    ?>

    <title>
        <?php echo $config[0]["config_site_title"]; ?>
    </title>

    <!-- .head -->
    <header class="head">
        <!-- .wrapper -->
        <div class="wrapper">
            <!-- .head-logo -->
            <a href="index.php" class="head-logo">
                <span class="head-logo__icon">
                    <img src="assets/img/sell.svg" alt="" />
                </span>
                <span class="head-logo__title">
                    <?php echo $config[0]["config_site_title"]; ?>
                </span>
            </a>
            <!-- /.head-logo -->

            <?php if (isset($_SESSION['auth'])) : ?>
            <!-- .head-nav -->
            <ul class="head-nav">
                <li>
                    <a href="create.php" class="head-nav-link">
                        <span class="head-nav-link__icon">
                            <img src="assets/img/new-invoice.svg" alt="" />
                        </span>
                        <span class="head-nav-link__title">
                            New invoice
                        </span>
                    </a>
                </li>
                <li>
                    <a href="invoices.php" class="head-nav-link">
                        <span class="head-nav-link__icon">
                            <img src="assets/img/invoices.svg" alt="" />
                        </span>
                        <span class="head-nav-link__title">
                            Invoices
                        </span>
                    </a>
                </li>
                <?php if ($_SESSION['user_type'] == "admin") : ?>
                <li>
                    <a href="users.php" class="head-nav-link">
                        <span class="head-nav-link__icon">
                            <img src="assets/img/users.svg" alt="" />
                        </span>
                        <span class="head-nav-link__title">
                            Users
                        </span>
                    </a>
                </li>
                <?php endif; ?>
                <li>
                    <a href="settings.php" class="head-nav-link">
                        <span class="head-nav-link__icon">
                            <img src="assets/img/configuration.svg" alt="" />
                        </span>
                        <span class="head-nav-link__title">
                            Settings
                        </span>
                    </a>
                </li>
                <li>
                    <a href="?logout=ok" class="head-nav-link">
                        <span class="head-nav-link__icon">
                            <img src="assets/img/logout.svg" alt="" />
                        </span>
                        <span class="head-nav-link__title">
                            Logout
                        </span>
                    </a>
                </li>
            </ul>
            <!-- /.head-nav -->
            <?php endIf; ?>
        </div>
        <!-- /.wrapper -->
    </header>
    <!-- /.head -->
