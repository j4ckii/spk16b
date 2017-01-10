{extends file="layout.tpl"}
{block name=title}SPK16B - News{/block}
{block name=body}
	<div class="jumbotron news">
    	{foreach from=$news item=a_news}
        	<h2>{$a_news.date}</h2>
            <p>{$a_news.text}</p>
            <br />
        {/foreach}
	</div>
{/block}