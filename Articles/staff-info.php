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
</body>
</html>



<?php
	
		
		$con = connect_db('central_db');
		
		$query_string = "SELECT * FROM user_id";
		$result = $con->query($query_string);
		
		
		while ($row = $result->fetch_array())
		{
			
			$query_string = "INSERT INTO computer_staff VALUES (".intval($row['user_id']).", 3);";
			$con->query($query_string);
			
			$con->close();
			
			header('Location: index.php/phone-info');
		}
		
		
		if (!$result->num_rows) header('Location: index.php/error');
			
			
		

?>