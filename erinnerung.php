<?php
require_once('includes/application_top.php');

if($_POST['action'] == 'add'){
	if(isset($_POST['news_2w']) && $_POST['news_2w'] == 1){
		$news_2w = 1;
	}else{
		$news_2w = 0;
	}
	if(isset($_POST['news_1w']) && $_POST['news_1w'] == 1){
		$news_1w = 1;
	}else{
		$news_1w = 0;
	}
	if(isset($_POST['news_3d']) && $_POST['news_3d'] == 1){
		$news_3d = 1;
	}else{
		$news_3d = 0;
	}
	if(isset($_POST['news_1d']) && $_POST['news_1d'] == 1){
		$news_1d = 1;
	}else{
		$news_1d = 0;
	}
	if(isset($_POST['birthday_2w']) && $_POST['birthday_2w'] == 1){
		$birthday_2w = 1;
	}else{
		$birthday_2w = 0;
	}
	if(isset($_POST['birthday_1w']) && $_POST['birthday_1w'] == 1){
		$birthday_1w = 1;
	}else{
		$birthday_1w = 0;
	}
	if(isset($_POST['birthday_3d']) && $_POST['birthday_3d'] == 1){
		$birthday_3d = 1;
	}else{
		$birthday_3d = 0;
	}
	if(isset($_POST['birthday_1d']) && $_POST['birthday_1d'] == 1){
		$birthday_1d = 1;
	}else{
		$birthday_1d = 0;
	}
	$email = $_POST['email'];
	if ($pqry = $mysqli->prepare("
		INSERT INTO reminder (email, news_2w, news_1w, news_3d, 
        news_1d, birthday_2w, birthday_1w, birthday_3d, birthday_1d)
		VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) 
		ON DUPLICATE KEY UPDATE
        email = VALUES(email),
        news_2w = VALUES(news_2w),
        news_1w = VALUES(news_1w),
        news_3d = VALUES(news_3d),
        news_1d = VALUES(news_1d),
        birthday_2w = VALUES(birthday_2w),
        birthday_1w = VALUES(birthday_1w),
		birthday_3d = VALUES(birthday_3d),
        birthday_1d = VALUES(birthday_1d)")) {
	 
		// Bind a variable to the parameter as a string. 
		$pqry->bind_param("siiiiiiii", $email, $news_2w, $news_1w, $news_3d, $news_1d, $birthday_2w, $birthday_1w, $birthday_3d, $birthday_1d);

		// Execute the statement.
		$pqry->execute();
		$smarty->assign('success', 'true');
	 
		// Close the prepared statement.
		$pqry->close();
	 
	}
}

$smarty->display('erinnerung.tpl');

?>