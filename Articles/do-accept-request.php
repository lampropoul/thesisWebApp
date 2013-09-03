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
		
		if ( isset($_GET['duty_id']) )
		{
		
			$con = connect_db('central_db');
			
			
			
			$query_string  = "SELECT * FROM change_list";
			$query_string .= " WHERE id=".$_GET['duty_id'];
			$result = $con->query($query_string);
			
			while ($change = $result->fetch_array())
			{
				$change_date = $change['request_date'];
				$change_start = $change['request_start_time'];
				$change_user_id = $change['user_id'];
			}
			
			
			
			$query_string  = "SELECT duty_start_time, duty_end_time FROM program";
			$query_string .= " WHERE program_id=".$_GET['duty_id'];
			$result = $con->query($query_string);
			
			while ($program = $result->fetch_array())
			{
				$prog_diff_times_secs = strtotime($program['duty_end_time']) - strtotime($program['duty_start_time']);
			}
			
			
			$change_end = date('H:i:s', strtotime($change_start) + $prog_diff_times_secs);
			
			$query_string  = "UPDATE program SET date='".$change_date."', duty_start_time='".$change_start."', duty_end_time='".$change_end."'";
			$query_string .= " WHERE program_id=".$_GET['duty_id'];
			$con->query($query_string);
			
			
			$query_string  = "DELETE FROM change_list";
			$query_string .= " WHERE id=".$_GET['duty_id'];
			$con->query($query_string);
			
			
			
			
			
			// ******************** NOTIFY *********************** //
			
			$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$change_user_id.", ".$_GET['duty_id'].", 1, 'Your request for date ".$change_date." and time ".$change_start." has been fulfilled.')";
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