<!-- HTML5 - utf-8 -->
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title><?php echo $titulo ?></title>
	<link rel="stylesheet" type="text/css" href="./css/based_layout.css">
</head>
<body>
	<header>HTML5-header</header>
	<div id='main'>
	  <nav>HTML5-nav</nav>
	  <section>
	  	<?php include ($template)?>
	  </section>
	  <aside>HTML5-aside</aside>
	 </div>
	<footer>HTML5-footer</footer>
</body>
</html>