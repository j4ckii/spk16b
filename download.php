<?php
require_once('includes/application_top.php');
$directory = "../spk16b/img/protected/1/";
$images = glob($directory . "*.jpg");
foreach($images as $image){
	$all_images[] = basename($image);
}
natsort($all_images);


$smarty->assign('all_images', $all_images);
$smarty->display('download.tpl');

?>