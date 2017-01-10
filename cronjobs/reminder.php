<?php
require_once('../includes/application_top.php');
require_once('../includes/phpmailer/PHPMailerAutoload.php');


if ($tmp = $mysqli->query("SELECT * FROM news WHERE date > CURDATE()")) {
	$mail = new PHPMailer;

	//$mail->SMTPDebug = 3;                               // Enable verbose debug output
	
	$mail->isSMTP();                                      // Set mailer to use SMTP
	$mail->Host = '	sslout.df.eu';  // Specify main and backup SMTP servers
	$mail->SMTPAuth = true;                               // Enable SMTP authentication
	$mail->Username = 'spk16b@manuel-heimann.de';                 // SMTP username
	$mail->Password = '101311!Jack!2016';                           // SMTP password
	$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
	$mail->Port = 465;                                    // TCP port to connect to
	
	$mail->setFrom('spk16b@manuel-heimann.de', 'SPK16B');
	
	$mail->isHTML(true);                                  // Set email format to HTML
	
	

	/* now you can fetch the results into an array - NICE */
	while($row = $tmp->fetch_assoc()){
		$datetime1 = date_create(date("Y-m-d"));
		print_r($datetime1);
		$datetime2 = date_create($row['date']);
		$interval = date_diff($datetime1, $datetime2);
		$days = $interval->format('%a');
		$mail->Subject = 'SPK16B Erinnerung '.$datetime2->format('d.m.Y');
		$mail->Body = '<h2>'.$datetime2->format('d.m.Y').'</h2><p>'.$row['text'].'</p>';
		
		if($days == '14'){
			if ($tmp2 = $mysqli->query("SELECT * FROM reminder WHERE news_2w = 1")) {
				/* now you can fetch the results into an array - NICE */
				while($row2 = $tmp2->fetch_assoc()){
					$mail->addAddress($row2['email']);     // Add a recipient
					if(!$mail->send()) {
						echo 'Message could not be sent.';
						echo 'Mailer Error: ' . $mail->ErrorInfo;
					}
					$mail->clearAddresses();
				}
			}
		}elseif($days == '7'){
			if ($tmp2 = $mysqli->query("SELECT * FROM reminder WHERE news_1w = 1")) {
				/* now you can fetch the results into an array - NICE */
				while($row2 = $tmp2->fetch_assoc()){
					$mail->addAddress($row2['email']);     // Add a recipient
					if(!$mail->send()) {
						echo 'Message could not be sent.';
						echo 'Mailer Error: ' . $mail->ErrorInfo;
					}
					$mail->clearAddresses();
				}
			}
		}elseif($days == '3'){
			if ($tmp2 = $mysqli->query("SELECT * FROM reminder WHERE news_3d = 1")) {
				/* now you can fetch the results into an array - NICE */
				while($row2 = $tmp2->fetch_assoc()){
					$mail->addAddress($row2['email']);     // Add a recipient
					if(!$mail->send()) {
						echo 'Message could not be sent.';
						echo 'Mailer Error: ' . $mail->ErrorInfo;
					}
					$mail->clearAddresses();
				}
			}
		}elseif($days == '1'){
			if ($tmp2 = $mysqli->query("SELECT * FROM reminder WHERE news_1d = 1")) {
				/* now you can fetch the results into an array - NICE */
				while($row2 = $tmp2->fetch_assoc()){
					$mail->addAddress($row2['email']);     // Add a recipient
					if(!$mail->send()) {
						echo 'Message could not be sent.';
						echo 'Mailer Error: ' . $mail->ErrorInfo;
					}
					$mail->clearAddresses();
				}
				
				
			}
		}
		
	}
 
}

?>