{extends file="layout.tpl"}
{block name=title}SPK16B - Geburtstag{/block}
{block name=body}
	<div class="jumbotron geburtstag">
    	{foreach from=$birthdays item=birthday}
        	<div class="row {cycle values='row_bright,row_dark'}">
            	<div class="col-xs-4 col-md-offset-3 col-md-2 text-center">
                	{$birthday.lastname}
                </div>
                <div class="col-xs-4 col-md-2 text-center ">
                	{$birthday.firstname}
                </div>
                <div class="col-xs-4 col-md-2 text-center">
                	{$birthday.date}
                </div>
            </div>
        {/foreach}
	</div>
{/block}