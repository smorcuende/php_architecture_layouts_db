<!--  Template que recoge datos del controller -->
<!-- busqueda -->
<div id="listado_usuarios">
	<h1>Busca alojamiento</h1>
  		 <form action="<?php //$action_post?>" name="form_datos" method="post">
           <label>
              Nombre hotel/apartamento:
               <input name="busqueda" type="text"/>
            </label>
            <input name="submit" type="submit" value="Enviar"/>
          </form>
       * encuentra tomando las tres primeras letras de la busqueda
</div>

<!-- listado -->
<?php if (isset($_POST['submit'])) {?>
	<article>
		<h1>Coincidencias busqueda:</h1>
	    <?php
	    foreach ($list as $k=>$v)
	    {
	    ?>
	    <div class="border_element"> 
	 	  	<?php echo $v?>
	    </div>
	    <?php
	    }
	    ?>
	</article>
<?php }?>

