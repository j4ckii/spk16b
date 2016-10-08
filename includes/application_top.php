<?php
require_once('smarty/libs/Smarty.class.php');
$smarty = new Smarty();

$a_template = explode("/", strrev(str_replace(".php", "", $_SERVER['PHP_SELF'])));
$str_current_page = strrev($a_template[0]);
$smarty->assign("str_current_page", $str_current_page);

?>