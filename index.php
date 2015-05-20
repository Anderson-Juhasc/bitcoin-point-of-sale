<?php include 'partials/header.php'; ?>

<?php if ($_POST) : ?>

<?php
    $user = $_POST['user'];
    $password = md5($_POST['password']);

	$db = new Db();

    $user = $db->query("SELECT * FROM users WHERE user_name = :user LIMIT 1", array("user"=>"$user"));

    if (count($user) == 1) {
        if ($password == $user[0]["user_password"]) {
            session_start();

            $_SESSION['auth'] = 1;
            $_SESSION['user_type'] = $user[0]["user_type"];
            $_SESSION['user_id'] = $user[0]["user_id"];

            header('Location: create.php');
        }
    }

    if ($_SESSION['auth'] != 1) {
        unset($_SESSION['auth']);

        header('Location: ' . $_SERVER["PHP_SELF"]);
    }
?>

<?php else : ?>

<?php
    if ($_SESSION['auth'] == 1) {
        header('Location: create.php');
    }
?>

    <!-- .wrapper -->
    <div class="wrapper">
        <!-- .page -->
        <div class="page">
            <!-- .page__head -->
            <header class="page__head">
                <h2 class="page__title">Dashboard</h2>
            </header>
            <!-- /.page__head -->

            <!-- .page__body -->
            <div class="page__body">
                <form action="<?php $_SERVER["PHP_SELF"] ?>" method="POST">
                User: <br><input type="text" name="user" class="input"><br><br>
                Password: <br><input type="password" name="password" class="input"><br><br>
                <button class="fields-action__btn btn btn--secondary btn--medium" type="submit">Login</button><br><br>
                </form>
            </div>
            <!-- /.page__body -->
        </div>
        <!-- /.page -->
    </div>
    <!-- /.wrapper -->

<?php endif; ?>

<?php include 'partials/footer.php'; ?>
