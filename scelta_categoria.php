<?php 
	$id_categoria = 1; 
	if(isset($_GET['id_categoria'])) $id_categoria = $_GET['id_categoria']; 
?>
<div id="scelta">
	<div id="lista">
		<?php include 'lista_categoria.php';?>
	</div>
	<div id="piatti">
		<?php include 'piatti_categoria.php';?>
	</div>
</div>

    
