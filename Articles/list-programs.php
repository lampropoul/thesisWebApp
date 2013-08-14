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
	
	
						
	<form action="index.php/list-programs" name="register" method="post" onSubmit="javascript:return validate_register(thesi);">
		<table border="0" >
			
			<tr>
				<td><label>Επιλέξτε Πρόγραμμα:</label></td>
				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->
				<select name="progname">
                	<!--<option value="0" selected="selected">---</option>-->
				<?php
					
					$con = connect_db('central_db');
					
					$query_string = "SELECT DISTINCT program_name FROM program ORDER BY program_name";
					$result = $con->query($query_string);
					
					$con->close();
					
					while ($row = $result->fetch_array())
					{
						echo '<option value="'.$row['program_name'].'">'.$row['program_name'].'</option>';
					}
					
				?>
				</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Προβολή Καθηκόντων" style="font-size:1em" class="btn btn-primary"/></td>
			</tr>
		</table>
	</form>

</body>
</html>



<?php
	
		
	if (isset($_POST['progname']))
	{
		
		$con = connect_db('central_db');
		
		$query_string  = "TRUNCATE TABLE progname";
		$con->query($query_string);
		
		$query_string = "INSERT INTO progname VALUES ('".$_POST['progname']."')";
		$result = $con->query($query_string);
		
		header('Location: index.php/list-duties');
		
	}

?>