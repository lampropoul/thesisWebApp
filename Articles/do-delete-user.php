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
		
		
		
		
		
		
		$con = connect_db('central_db');
		
		$query_string  = "DELETE FROM users";
		$query_string .= " WHERE user_id=".$_GET['user_id'];
		$con->query($query_string);
		
		header('Location: index.php/list-users?delete=1');

?>