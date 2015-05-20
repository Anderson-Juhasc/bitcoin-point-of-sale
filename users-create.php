<?php include 'partials/header.php'; ?>

<?php
    if ($_SESSION['auth'] != 1) {
        unset($_SESSION['auth']);

        header('Location: index.php');
        exit();
    }
?>

<?php if (isset($_POST["user-create"])) : ?>

<?php
    $user_name = $_POST['user-name'];
    $user_type = $_POST['user-type'];
    $user_password = $_POST['user-password'];
    $user_repassword = $_POST['user-repassword'];

    $db = new Db();

    $user = $db->query("SELECT * FROM users WHERE user_name = '$user_name' LIMIT 1");

    if (count($user) == 0) {
        if ($user_password == $user_repassword) {
            $user_password = md5($user_password);

            $db->query("INSERT INTO
                        users(user_type, user_name, user_password)
                        VALUES('$user_type', '$user_name', '$user_password')"
            );
        }
    }

    header('Location: users.php');
?>

<?php else : ?>

    <!-- .wrapper -->
    <div class="wrapper">
        <!-- .page -->
        <div class="page">
            <!-- .page__head -->
            <header class="page__head">
                <h2 class="page__title">New User</h2>
            </header>
            <!-- /.page__head -->

            <!-- .page__body -->
            <div class="page__body">
                <!-- .user-create -->
                <div class="user-create">
                    <form action="<?php $_SERVER["PHP_SELF"] ?>" method="POST" autocomplete="off">
                        <!-- .fields -->
                        <ul class="fields">
                            <li>
                                <label for="" class="fields__label">Username:</label>
                                <input id="" class="fields__input input input--full" name="user-name" required type="text">
                            </li>
                            <li>
                                <label for="" class="fields__label">Password:</label>
                                <input id="" class="fields__input input input--full" name="user-password" required type="text">
                            </li>
                            <li>
                                <label for="" class="fields__label">Confirm password:</label>
                                <input id="" class="fields__input input input--full" name="user-repassword" required type="text">
                            </li>
                            <li>
                                <label for="" class="fields__label">Permission:</label>
                                <select id="" name="user-type">
                                    <option value="admin">Admin</option>
                                    <option value="user">User</option>
                                </select>
                            </li>
                        </ul>
                        <!-- /.fields -->

                        <!-- .fields-action -->
                        <div class="fields-action">
                            <button type="submit" name="user-create" class="fields-action__btn btn btn--secondary">Create user</button>
                        </div>
                        <!-- /.fields-action -->
                    </form>
                </div>
                <!-- /.user-create -->
            </div>
            <!-- /.page__body -->
        </div>
        <!-- /.page -->
    </div>
    <!-- /.wrapper -->

<?php endif; ?>

<?php include 'partials/footer.php'; ?>
