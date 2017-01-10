<?php
require_once('includes/application_top.php');
$tag[0] = "Sonntag";
$tag[1] = "Montag";
$tag[2] = "Dienstag";
$tag[3] = "Mittwoch";
$tag[4] = "Donnerstag";
$tag[5] = "Freitag";
$tag[6] = "Samstag";
if ($tmp = $mysqli->query("SELECT * FROM news WHERE date >= CURDATE() ORDER BY date ASC")) {
	while($row = $tmp->fetch_assoc()){
		$row['date'] = $tag[date("w", strtotime($row['date']))].date(" d.m.Y", strtotime($row['date']));
		$news[] = $row;	
	}
}

if(!empty($news)){
	$smarty->assign('news', $news);
}


$smarty->display('news.tpl');

?>