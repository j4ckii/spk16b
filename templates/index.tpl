{extends file="layout.tpl"}
{block name=title}SPK16B - Index{/block}
{block name=body}
	<div class="jumbotron">
		<div class="row">
			<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-primary" href="stundenplan.php" role="button">Stundenplan</a>
			</div>
			<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-success" href="blockplan.php" role="button">Blockplan</a>
			</div>
			<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-info" href="download.php" role="button">Downloads</a>
			</div>
			<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-warning" href="news.php" role="button">News</a>
			</div>
		</div>
		<div class="row">
        	<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-custom-2" href="praxisbesuche.php" role="button">Praxisbesuche</a>
			</div>
        	<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-custom-1" target="_blank" href="/downloads/Anleitung_BBZ-Schueler.pdf" role="button">WLAN-Passwort</a>
			</div>
			<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-danger" href="faecherliste.php" role="button">F&auml;cherliste</a>
			</div>
			<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-custom-3" href="erinnerung.php" role="button">Erinnerung</a>
			</div>
		</div>
        <div class="row">
        	<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-info" href="doppelqualifikation.php" role="button">Doppelqualifikation</a>
			</div>
        	<div class="col-sm-12 col-md-3 button_container">
				<a class="btn btn-lg btn-default" target="_blank" href="https://www.amazon.de/dp/3898627535/ref=cm_sw_em_r_mt_dp_d8o-xbC2RM1FP" role="button">Pflege-Pocket</a>
			</div>
        </div>
	</div>
{/block}