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
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">google.load("mootools", "1.1.2");</script>
<script type="text/javascript">
	
	
	function validate_register(thesi)
	{
		if(thesi.value.length<1){
			alert('Δεν έχετε ορίσει θέση');
			thesi.focus();
			return false;
		}
		return true;
	}
	
	
	
</script>
</head>


<body>
	
	
						
	<form action="index.php/medical-info" name="register" method="post" onSubmit="javascript:return validate_register(thesi);">
		<table border="0" >
			<tr>
				<td><label>Εισάγετε Θέση:</label></td>
				<td><input name="thesi" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Επιλέξτε Βαθμίδα: </label></td>          		
				<td>
				<select name="bathmida">
				<?php
					
					$con = connect_db('central_db');
					
					// define query
					$query_string = "SELECT name FROM bathmides WHERE team_id=1 ORDER BY name";
					//var_dump($query_string);
					// execute query
					$result = $con->query($query_string);
					//var_dump($result);
					$con->close();
					
					$i=1;
					while ($row = $result->fetch_array())
					{
						if($i==1) echo '<option value="'.$row['name'].'" selected="selected">'.$row['name'].'</option>';
						else echo '<option value="'.$row['name'].'">'.$row['name'].'</option>';
						$i++;
					}
					
				?>
				</select>
				</td>
			</tr>
			<tr>
				<td><label>Επιλέξτε Ειδικότητα:</label></td>
				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->
				<select name="eidikotita">
				<?php
					
					$con = connect_db('central_db');
					
					// define query
					$query_string = "SELECT name FROM eidikotites WHERE team_id=1 ORDER BY name";
					//var_dump($query_string);
					// execute query
					$result = $con->query($query_string);
					//var_dump($result);
					$con->close();
					
					$i=1;
					while ($row = $result->fetch_array())
					{
						if($i==1) echo '<option value="'.$row['name'].'" selected="selected">'.$row['name'].'</option>';
						else echo '<option value="'.$row['name'].'">'.$row['name'].'</option>';
						$i++;
					}
					
				?>
				</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Καταχώριση Πληροφοριών Ιατρού" style="font-size:1em" class="btn btn-success"/></td>
                <td></td>
                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href='index.php/cancel'" style="font-size:1em" class="btn btn-danger"/></td>
			</tr>
		</table>
	</form>

</body>
</html>



<?php
	
		
		if (isset($_POST['thesi']))
		{
			
			$con = connect_db('central_db');
			
			$query_string = "SELECT * FROM user_id";
			$result = $con->query($query_string);
			
			
			while ($row = $result->fetch_array())
			{
				
				$thesi = $_POST['thesi'];
				$bathmida = $_POST['bathmida'];
				$eidikotita = $_POST['eidikotita'];
				
							
				// define query
				$query_string = "INSERT INTO doctor_users VALUES (".intval($row['user_id']).", '".$thesi."', 1, '".$bathmida."', '".$eidikotita."');";
				var_dump($query_string);
				$con->query($query_string);
				
				$con->close();
				
				header('Location: index.php/phone-info');
			}
			
			
			if (!$result->num_rows) header('Location: index.php/error');
			
			
			
		}
				


?>