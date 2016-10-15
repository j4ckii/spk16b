{extends file="layout.tpl"}
{block name=title}SPK16B - Index{/block}
{block name=body}
	<div class="jumbotron login">
		<form class="form-inline" method="post" action="">
        	<input type="hidden" name="action" value="login">
  			<div class="form-group">
    			<label class="sr-only" for="email">Email</label>
    			<input type="email" class="form-control" id="email" name="email" placeholder="Email">
  			</div>
  			<div class="form-group">
                <label class="sr-only" for="password">Passwort</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Passwort">
          	</div>
          	<button type="submit" class="btn btn-primary">Login</button>
        </form>
	</div>
{/block}