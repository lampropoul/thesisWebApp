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
		
		
		$con = connect_db('central_db');
		
		$query_string  = "SELECT progname FROM progname";
		$result = $con->query($query_string);
		
		while ($row = $result->fetch_array())
		{	
			$progname = $row['progname'];
		}
		
		
		$query_string  = "TRUNCATE TABLE progname";
		$con->query($query_string);
		
		
		if ( isset( $progname ) )
		{
			
			$query_string  = "DELETE FROM program WHERE program_name='".$progname."'";
			$result = $con->query($query_string);
			
			$con->close();
			
			header('Location: http://localhost/HFPM_WebApp_J/index.php/list-programs');
			
		}
		else
		{
			header('Location: http://localhost/HFPM_WebApp_J/index.php/error');
		}
		
	?>
    
</body>
</html>