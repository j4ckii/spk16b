{extends file="layout.tpl"}
{block name=title}SPK16B - Stundenplan{/block}
{block name=body}
	<div class="jumbotron stundenplan">
        <strong>17 - 21. Oktober</strong>
        <br />
		<a href="img/stundenplan/stundenplan2.jpg" data-toggle="lightbox" data-gallery="stundenplan">
			<img src="img/stundenplan/stundenplan2.jpg" class="img-thumbnail">
		</a>
        <br /><br />
        <div class="row>">
            <div class="col-sm-12 col-md-4 button_container">
                <a class="btn btn-lg btn-success" href="img/stundenplan/stundenplan_group_1.jpg" data-toggle="lightbox" data-gallery="stundenplan_group_1" role="button">Gruppe 1</a>
            </div>
            <div class="col-sm-12 col-md-4 button_container">
                <a class="btn btn-lg btn-success" href="img/stundenplan/stundenplan_group_2.jpg" data-toggle="lightbox" data-gallery="stundenplan_group_2" role="button">Gruppe 2</a>
            </div>
            <div class="col-sm-12 col-md-4 button_container">
                <a class="btn btn-lg btn-success" href="img/stundenplan/stundenplan_group_3.jpg" data-toggle="lightbox" data-gallery="stundenplan_group_3" role="button">Gruppe 3</a>
            </div>
        </div>
        <br /><br />
        <strong>24 - 28. Oktober</strong>
        <br />
		<a href="img/stundenplan/stundenplan3.jpg" data-toggle="lightbox" data-gallery="stundenplan">
			<img src="img/stundenplan/stundenplan3.jpg" class="img-thumbnail">
		</a>
        <br />
        <br />
        <div class="row>">
            <div class="col-sm-12 col-md-4 button_container">
                <a class="btn btn-lg btn-success" href="img/stundenplan/stundenplan_group_1_2.jpg" data-toggle="lightbox" data-gallery="stundenplan_group_1_2" role="button">Gruppe 1</a>
            </div>
            <div class="col-sm-12 col-md-4 button_container">
                <a class="btn btn-lg btn-success" href="img/stundenplan/stundenplan_group_2_2.jpg" data-toggle="lightbox" data-gallery="stundenplan_group_2_2" role="button">Gruppe 2</a>
            </div>
            <div class="col-sm-12 col-md-4 button_container">
                <a class="btn btn-lg btn-success" href="img/stundenplan/stundenplan_group_3_2.jpg" data-toggle="lightbox" data-gallery="stundenplan_group_3_2" role="button">Gruppe 3</a>
            </div>
        </div>
        <br /><br />
        {if $smarty.get.dev2016 != ''}
        	<iframe frameborder="0" id="ctl00_splt_1i1_CC" name="contentUrlPane" scrolling="auto" src="https://terminal-mszi.de:443/iframe.aspx?pid=-339999550" style="width: 100%; height: 477px; margin-right: 0px;"></iframe>
        {/if}
	</div>
{/block}