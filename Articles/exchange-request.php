<?php
	
		function connect_db($name)
		{
			try
			{
				@ $con = mysqli_connect('localhost', 'root', 'OgfTt&TTtG?', $name);
				
				if (mysqli_connect_errno()) {
				printf("Connect failed: %s\n", mysqli_connect_error());
				exit();
			}
			
			$con->select_db($name);
			
			if (!$con->set_charset('utf8'))
			printf("Error loading character set utf8: %s\n", $mysqli->error);
			
			//echo $con;
			
			return $con;
			}
				catch (Exception $e)
			{
				return -1;
			}
		}
		
		
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>


<body>
	
	<?php
		
		if ( isset($_GET['before']) && isset($_GET['after']) )
		{
		
			$con = connect_db('central_db');
			
			
			
			
			
			// ********************* BEFORE *********************** //
			
			$query_string  = "SELECT date, duty_start_time, duty_end_time, user_id FROM program";
			$query_string .= " WHERE program_id=".$_GET['before'];
			$result = $con->query($query_string);
			
			while ($before = $result->fetch_array())
			{
				$before_date = $before['date'];
				$before_start = $before['duty_start_time'];
				$before_end = $before['duty_end_time'];
				$before_user_id = $before['user_id'];
			}
			
			
			// ********************* AFTER *********************** //
			
			$query_string  = "SELECT date, duty_start_time, duty_end_time, user_id FROM program";
			$query_string .= " WHERE program_id=".$_GET['after'];
			$result2 = $con->query($query_string);
			
			while ($after = $result2->fetch_array())
			{
				$after_date = $after['date'];
				$after_start = $after['duty_start_time'];
				$after_end = $after['duty_end_time'];
				$after_user_id = $after['user_id'];
			}
			
			
			
			
			
			
			// ******************* EXCHANGE ******************** //
			
			$query_string  = "UPDATE program SET date='".$after_date."', duty_start_time='".$after_start."', duty_end_time='".$after_end."'";
			$query_string .= " WHERE program_id=".$_GET['before'];
			$con->query($query_string);
			
			$query_string  = "UPDATE program SET date='".$before_date."', duty_start_time='".$before_start."', duty_end_time='".$before_end."'";
			$query_string .= " WHERE program_id=".$_GET['after'];
			$con->query($query_string);
			
			
			$query_string  = "DELETE FROM change_list";
			$query_string .= " WHERE id=".$_GET['before'];
			$con->query($query_string);
			
			
			
			
			
			// ******************** NOTIFY *********************** //
			
			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$before_user_id.", ".$_GET['before'].", 1, 'Your request for date ".$after_date." and time ".$after_start." has been fulfilled.')";
			$con->query($query_string);
			
			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$after_user_id.", ".$_GET['after'].", 1, 'Your program on date ".$after_date." moved to ".$before_date.".')";
			$con->query($query_string);
			
			
			$con->close();
			
			header('Location: http://localhost/HFPM_WebApp_J/index.php/requests-users');
			
		}
		else
		{
			header('Location: http://localhost/HFPM_WebApp_J/index.php/error');
		}
		
	?>
    
</body>
</html>