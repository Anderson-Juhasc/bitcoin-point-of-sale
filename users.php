<?php include 'partials/header.php'; ?>

<?php
    if ($_SESSION['auth'] != 1 && $_SESSION['user_type'] == 'admin') {
        unset($_SESSION['auth']);

        header('Location: index.php');
        exit();
    }

	$db = new Db();
    $users = $db->query("SELECT * FROM users ORDER BY user_id DESC");
?>

    <!-- .wrapper -->
    <div class="wrapper">
        <!-- .page -->
        <div class="page">
            <!-- .page__head -->
            <header class="page__head">
                <h2 class="page__title">Users</h2>
                <!-- .page__nav -->
                <ul class="page__nav">
                    <li>
                        <a class="btn btn--secondary" href="users-create.php">+ New user</a>
                    </li>
                </ul>
                <!-- /.page__nav -->
            </header>
            <!-- /.page__head -->

            <!-- .page__body -->
            <div class="page__body">
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Data</th>
                            <th>Username</th>
                            <th>Permission</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($users as $key) : ?>
                        <tr>
                            <td><?php echo $key["user_id"]; ?></td>
                            <td></td>
                            <td><?php echo $key["user_name"]; ?></td>
                            <td><?php echo $key["user_type"]; ?></td>
                            <td>
                                <a href="">Delete</a>
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
