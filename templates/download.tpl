{extends file="layout.tpl"}
{block name=title}SPK16B - Download{/block}
{block name=body}
	<div class="jumbotron download">
    	<h2>Schulaufgabe Hurm + Opolka</h2>
		<a class="protected_download" href="/downloads/protected/hurm_opolka_1.zip">Download</a><br />
        <a class="protected_download" href="/downloads/protected/SA_GdP1_LF1_Blut_Zelle_Gewebe.docx">Download Word Dokument (Hurm)</a><br />
        <a class="protected_download" href="/downloads/protected/SA_GdP1_LF1_Blut_Zelle_Gewebe.pdf">Download PDF Dokument (Hurm)</a><br /><br />
        <div class="row">
			{foreach from=$all_images item=img}
				<div class="col-sm-12 col-md-3">
					<a href="img/protected/1/{$img}" data-toggle="lightbox" data-gallery="1-gallery">
						<img src="img/protected/1/{$img}" class="img-thumbnail">
					</a>
				</div>
			{/foreach}
			{*<div class="col-sm-12 col-md-3">
				<a href="img/protected/1/1.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/1.jpg" class="img-thumbnail">
				</a>
			</div>
			<div class="col-sm-12 col-md-3">
				<a href="img/protected/1/2.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/2.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/3.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/3.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/4.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/4.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/5.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/5.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/6.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/6.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/7.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/7.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/8.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/8.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/9.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/9.jpg" class="img-thumbnail">
				</a>
			</div>
            <div class="col-sm-12 col-md-3">
				<a href="img/protected/1/10.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/10.jpg" class="img-thumbnail">
				</a>
			</div>
			<div class="col-sm-12 col-md-3">
				<a href="img/protected/1/11.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/11.jpg" class="img-thumbnail">
				</a>
			</div>
			<div class="col-sm-12 col-md-3">
				<a href="img/protected/1/12.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/12.jpg" class="img-thumbnail">
				</a>
			</div>
			<div class="col-sm-12 col-md-3">
				<a href="img/protected/1/13.jpg" data-toggle="lightbox" data-gallery="1-gallery">
					<img src="img/protected/1/13.jpg" class="img-thumbnail">
				</a>
			</div>*}
		</div>
	</div>
{/block}