<?php 
	$cibo = getCiboFromId($_GET['id_cibo']);
	$id_categoria = $cibo['categoria_id'];	
?>
<div id='dettaglio'>
	<h3><?php echo strtolower ($cibo ['descrizione'])?></h3>
		<img class="piatto_img2" src="images/<?php echo $cibo['immagine'] ?>" alt= "<?php echo $cibo['descrizione'] ?>"/>
	<h5> � <?php echo $cibo ['costo']?></h5>
	<form> 
		<fieldset>
			<a href="index.php?action=scelta_piatto&method=add&id_cibo=<?php echo $cibo['id'] ?>"><img class="ordina" src="images/ordina.gif" alt="ordina" title="ordina"/></a>
			<?php 
				if (isset($_GET['method']))
				{
					if (! isset($_SESSION['ordine'])) $_SESSION['ordine'] = array();
					if (! isset($_SESSION['ordine'][$_GET['id_cibo']])) $_SESSION['ordine'][$_GET['id_cibo']] = 1;
					else $_SESSION['ordine'][$_GET['id_cibo']] += 1;
					echo "<h3 class='aggiunto'>aggiunto all'ordine!</h3>";
				}
			?>
		</fieldset>
	</form> 
</div> 
<div id="comanda_tav">
	<a href="index.php?action=comanda_tavolo&id_cibo=<?php echo $cibo['id'] ?>"><img class="ordina_comanda" src="images/comanda.gif" alt="vai al tuo ordine" title="il tuo ordine "/></a>
</div>