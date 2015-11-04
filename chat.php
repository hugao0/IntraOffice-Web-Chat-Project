

<?php

// include the file that handles de database connection
include('db.php');

// check what is the desired action
$action = $_POST["action"];

if ($action == "sendmessage") {
	
	// SENDMESSAGE:
	// Stores the message in the database and return 1 if succeed
	
	// organize data to store, using htmlentities to
	// avoid tricky users manipulating tags
	$name = htmlentities($_POST["name"], ENT_QUOTES, "UTF-8");
	$message = htmlentities($_POST["message"], ENT_QUOTES, "UTF-8");
	$now = date('Y-m-d H:i:s');
	
	// insert into table
	$sql = "insert into `chatlog` (`name`, `message`, `datetime`) values ('".$name."', '".$message."', '".$now."');";
	$result = $DBH->query($sql);
	
	// manage the result of the query
	if($result) {
		echo "1";
	} else {
		echo "0";
	}
	
} else if ($action = "getmessages") {
	
	// GETMESSAGES:
	// Return the messages from a specified ID, or all if no ID is provided
	
	// Get the last message id
	if (isset($_POST["lastmessageid"]) && is_numeric($_POST["lastmessageid"])) {
		$lastMessageId = $_POST["lastmessageid"];	
	} else {
		$lastMessageId = 0;
	}
	
	// Do a select in the database. 
	$sql = 'select `id`,`name`,`message`,`datetime` from `chatlog` where `id` > '.$lastMessageId.' order by `id`';
	$messages = $DBH->query($sql);
	
	// Even not having any new messages, the result must be different from false
	// in case the query have run properly. 
	if ($messages) {
		
		// build a JSON object as response, containing an array of messages
		// a message is a object with id, name, message and datetime attributes
		echo '{"messages":[';
		$first = true;
		foreach ($messages as $row) {
			
			// after the first one, print a comma before every element
			// to build the JSON object properly
			if (!$first) {
				echo ",";
			}
			
			$id = $row['id'];
			$name = $row['name'];
			$message = $row['message'];
			$datetime = date('h:ia', strtotime($row['datetime']));
			
			echo '{';
			echo '"id": "'. $id . '", ';
			echo '"name": "'. $name . '", ';
			echo '"message": "'. $message . '", ';
			echo '"datetime": "'. $datetime  . '" ';
			echo '}';
			$first = false;
		}
		echo ']}';
	} else {
		// there was an error running the query, because it returned false.
		echo "0";
	}
	
}


