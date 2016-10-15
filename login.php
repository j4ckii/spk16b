<?php
require_once('includes/application_top.php');

if($_POST['action'] == 'login'){
	$email = $_POST['email'];
	$password = md5($_POST['password']);
	if ($pqry = $mysqli->prepare("SELECT * FROM users WHERE email = ? AND password = ?")) {
	 
		// Bind a variable to the parameter as a string. 
		$pqry->bind_param("ss", $email, $password);

		// Execute the statement.
		$pqry->execute();
	 
		/* instead of bind_result: */
		$result = $pqry->get_result();
	
		/* now you can fetch the results into an array - NICE */
		$tmp = $result->fetch_assoc();
	 	if(!isset($tmp)){
			echo('kein treffer');
		}elseif ($tmp['type'] == 'admin'){
			$_SESSION['is_admin'] = 1;
		}
		print_r($_SESSION);
		// Close the prepared statement.
		$pqry->close();
	 
	}
}

$smarty->display('login.tpl');

?>