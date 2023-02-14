<?php
    require_once 'config/fungsi.php'
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <nav>
        <?php
            require_once 'config/menu.php';
        ?>
    </nav>
    <div id="container">
        <?php
            $dir = "content";
            $page = @$_GET['page'];

            if (empty($page)) {
                include "content/home.php";
            }
            else {
                $scan = scanFile($dir, $page);
                if ($scan === 1) {
                    include "content/$page.php";
                }
                else {
                    include "content/404.php";
                }
            }
        ?>
    </div>
</body>
</html>