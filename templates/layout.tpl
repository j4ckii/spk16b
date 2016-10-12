<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>{block name=title}Default Page Title{/block}</title>
		<!-- Bootstrap -->
		<link href="css/bootstrap.css" rel="stylesheet">	
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		<!-- Global CSS File -->
		<link href="css/global.css" rel="stylesheet">
		<!-- Lightbox -->
		<link href="css/ekko-lightbox.css" rel="stylesheet">
		
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- Scripts -->
		<script>
		{literal}
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
			
			  ga('create', 'UA-85395094-1', 'auto');
			  ga('send', 'pageview');
		{/literal}
		</script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="js/ekko-lightbox.js"></script>
	</head>
	<body>
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
			  		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
			  		</button>
			  		<a class="navbar-brand" href="index.php">SPK 16 B</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li {if $str_current_page == 'index'} class="active" {/if}><a href="index.php">Home</a></li>
						<li {if $str_current_page == 'stundenplan'} class="active" {/if}><a href="stundenplan.php">Stundenplan</a></li>
						<li {if $str_current_page == 'blockplan'} class="active" {/if}><a href="blockplan.php">Blockplan</a></li>
						<li {if $str_current_page == 'doppelqualifikation'} class="active" {/if}><a href="doppelqualifikation.php">Doppelqualifikation</a></li>
						<li {if $str_current_page == 'news'} class="active" {/if}><a href="news.php">News</a></li>
                        <li {if $str_current_page == 'praxisbesuche'} class="active" {/if}><a href="praxisbesuche.php">Praxisbesuche</a></li>
                        <li><a href="/downloads/Anleitung_BBZ-Schueler.pdf" target="_blank">WLAN-Passwort</a></li>
						<li {if $str_current_page == 'faecherliste'} class="active" {/if}><a href="faecherliste.php">F&auml;cherliste</a></li>
						<li><a href="https://www.amazon.de/dp/3898627535/ref=cm_sw_em_r_mt_dp_d8o-xbC2RM1FP" target="_blank">Pflege-Pocket</a></li>
					</ul>
				</div><!--/.nav-collapse -->
		  	</div>
		</nav>
	
		<div class="container">
			{block name=body}{/block}	
		</div> <!-- /container -->
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		<script>
			$( document ).ready(function() {
				$(document).on('click', '[data-toggle="lightbox"]', function(event) {
					event.preventDefault();
					$(this).ekkoLightbox();
				});
			});	
		</script>
	</body>
</html>
