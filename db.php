

<?php
try {
	$host = 'localhost';  
	$dbname = 'chat';
	$user = 'root';
	$pass = '';
	# MySQL with PDO_MYSQL
	$DBH = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
}
catch(Exception $e) {
	die ("<pre>There was an error!<br>".$e->getFile().", at line ".$e->getLine()."<br>".$e->getMessage()."</pre>");
}
  
?>