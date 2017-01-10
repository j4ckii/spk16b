<?php
if(!isset($_SESSION)){
	session_start();
}

require_once('smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$mysqli = new mysqli("mysql5.manuel-heimann.de", "db505436", "101311!Jack!2016", "db505436");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
$mysqli->set_charset("utf8");


$a_template = explode("/", strrev(str_replace(".php", "", $_SERVER['PHP_SELF'])));
$str_current_page = strrev($a_template[0]);
$smarty->assign("str_current_page", $str_current_page);

?>