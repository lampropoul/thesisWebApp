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
	
	
		
	function isNumber(n) {
	  return !isNaN(parseFloat(n)) && isFinite(n);
	}


	
	function validate_stathero(stathero)
	{
		if(stathero.value.length != 10 || !isNumber(stathero.value)){
			alert('Παρακαλώ εισάγετε 10 αριθμούς');
			stathero.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate_kinito(kinito)
	{
		if(kinito.value.length != 10 || !isNumber(kinito.value)){
			alert('Παρακαλώ εισάγετε 10 αριθμούς');
			kinito.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate_fax(fax)
	{
		if(fax.value.length != 10 || !isNumber(fax.value)){
			alert('Παρακαλώ εισάγετε 10 αριθμούς');
			fax.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate(stathero, kinito, fax)
    {
		if(!( validate_stathero(stathero) && validate_kinito(kinito) && validate_fax(fax) )) {
			return false;
		}
		return true;	
    }
	
	
	
	
</script>
</head>


<body>
	
	
						
	<form action="index.php/phone-info" name="register" method="post" onSubmit="javascript:return validate(stathero, kinito, fax);">
		<table border="0" >
			<tr>
				<td><label>Εισάγετε Σταθερό:</label></td>
				<td><input name="stathero" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Κινητό: </label></td>          		
				<td><input name="kinito" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Φαξ:</label></td>
				<td><input name="fax" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Καταχώριση Πληροφοριών Τηλεφώνου" style="font-size:1em" class="btn btn-success"/></td>
                <td></td>
                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href='index.php/cancel'" style="font-size:1em" class="btn btn-danger"/></td>
			</tr>
		</table>
	</form>

</body>
</html>



<?php
	
		
		if (isset($_POST['kinito']))
		{
			
			$con = connect_db('central_db');
			
			$query_string = "SELECT * FROM user_id";
			$result = $con->query($query_string);
			
			
			while ($row = $result->fetch_array())
			{
				
				$stathero = $_POST['stathero'];
				$kinito = $_POST['kinito'];
				$fax = $_POST['fax'];
				
							
				// define query
				$query_string = "INSERT INTO phone_numbers VALUES (".intval($row['user_id']).", '".$stathero."', '".$kinito."', '".$fax."');";
				
				$con->query($query_string);
				
				$con->close();
				
				header('Location: index.php/address-info');
				
				break;
			}
			
			
			if (!$result->num_rows) header('Location: index.php/error');
			
			
			
		}
				


?>