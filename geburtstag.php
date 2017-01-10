<?php
require_once('includes/application_top.php');
if ($tmp = $mysqli->query("SELECT * FROM birthday ORDER BY (case when date_format(date, '%m-%d') >= date_format(now(), '%m-%d')
               			then 0 else 1
          			end),
         			date_format(date, '%m-%d')")) {
	while($row = $tmp->fetch_assoc()){
		$row['date'] = date(" d.m.Y", strtotime($row['date']));
		$birthdays[] = $row;	
	}
}

if(!empty($birthdays)){
	$smarty->assign('birthdays', $birthdays);
}


$smarty->display('geburtstag.tpl');

?>