{extends file="layout.tpl"}
{block name=title}SPK16B - Erinnerung{/block}
{block name=body}
	<script>
		$( document ).ready(function() {
			$('form').submit(function(event){
				if($('#email').val() == ''){
					alert('Bitte Email-Adresse eingeben');
					event.preventDefault();
				}
			});
		});	
	</script>
	<div class="jumbotron erinnerung">
    	<p>Email-Adresse eingeben und die Boxen anhaken um zu den entsprechenden Zeiten erinnert zu werden. (Es können mehrere Boxen ausgewählt werden)</p>
        {if isset($success)}
        	<p class="bg-success">&Auml;nderungen erfolgreich gespeichert.</p>
        {/if}
		<form method="post" action="">
        	<input type="hidden" name="action" value="add">
        	<div class="form-group">
            	<label for="email">Email eingeben</label>
            	<input type="email" class="form-control" id="email" name="email" placeholder="Email">
          	</div>
            <strong>News Erinnerungen</strong>
            <br /><br />
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="news_2w" value="1">
    					2 Wochen vorher
  				</label>
			</div>
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="news_1w" value="1">
    					1 Woche vorher
  				</label>
			</div>
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="news_3d" value="1">
    					3 Tage vorher
  				</label>
			</div>
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="news_1d" value="1">
    					1 Tag vorher
  				</label>
			</div>
            {*<br />
            <strong>Geburtstag Erinnerungen</strong>
            <br /><br />
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="birthday_2w" value="1">
    					2 Wochen
  				</label>
			</div>
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="birthday_1w" value="1">
    					1 Woche
  				</label>
			</div>
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="birthday_3d" value="1">
    					3 Tage
  				</label>
			</div>
            <div class="form-check">
  				<label class="form-check-label">
    				<input class="form-check-input" type="checkbox" name="birthday_1d" value="1">
    					1 Tag
  				</label>
			</div>*}
            <br />
            <button type="submit" class="btn btn-primary">Speichern</button>
        </form>
	</div>
{/block}