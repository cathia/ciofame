<?php include ('includes/funzioni_db.php') ?>
<!DOCTYPE html>
<html>
    <head>
        <title>HAL Restaurant</title>
    </head>
    <body>
		<?php		if (! isset($_GET['action']) || $_GET['action'] == 'benvenuto'): ?>
        <a href="index.php?action=scelta_categoria"><img src="images/sfondo.gif" alt="Benvenuto" /></a>
        <?php else: ?>
		<?php require $_GET['action'].'.php'; ?>
		<?php endif; ?>
    </body>
</html>