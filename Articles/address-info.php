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


	
	function validate_nomos(nomos)
	{
		if(nomos.value.length < 1){
			alert('Δεν έχετε ορίσει κάποιο πεδίο');
			nomos.focus();
			return false;
		}
		return true;
	}


	
	function validate_dimos(dimos)
	{
		if(dimos.value.length < 1){
			alert('Δεν έχετε ορίσει κάποιο πεδίο');
			dimos.focus();
			return false;
		}
		return true;
	}


	
	function validate_city(city)
	{
		if(city.value.length < 1){
			alert('Δεν έχετε ορίσει κάποιο πεδίο');
			city.focus();
			return false;
		}
		return true;
	}


	
	function validate_address(address)
	{
		if(address.value.length < 1){
			alert('Δεν έχετε ορίσει κάποιο πεδίο');
			address.focus();
			return false;
		}
		return true;
	}


	
	function validate_tk(tk)
	{
		if(tk.value.length != 5 || !isNumber(tk.value)){
			alert('Ο ΤΚ πρέπει να έχει ακριβώς 5 αριθμούς');
			tk.focus();
			return false;
		}
		return true;
	}


	
	function validate_perioxi(perioxi)
	{
		if(perioxi.value.length < 1){
			alert('Δεν έχετε ορίσει κάποιο πεδίο');
			perioxi.focus();
			return false;
		}
		return true;
	}


	
	function validate_xwra(xwra)
	{
		if(xwra.value.length < 1){
			alert('Δεν έχετε ορίσει κάποιο πεδίο');
			xwra.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate(nomos, dimos, city, address, tk, perioxi, xwra)
    {
		if(!( validate_nomos(nomos) && validate_dimos(dimos) && validate_city(city) && validate_address(address) && validate_tk(tk) && validate_perioxi(perioxi) && validate_xwra(xwra) )) {
			return false;
		}
		return true;	
    }
	
	
	
	
</script>
</head>


<body>
	
	
						
	<form action="index.php/address-info" name="register" method="post" onSubmit="javascript:return validate(nomos, dimos, city, address, tk, perioxi, xwra);">
		<table border="0" >
			<tr>
				<td><label>Εισάγετε Νομό:</label></td>
				<td><input name="nomos" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Δήμο:</label></td>
				<td><input name="dimos" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Πόλη:</label></td>
				<td><input name="city" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Διεύθυνση:</label></td>
				<td><input name="address" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε ΤΚ:</label></td>
				<td><input name="tk" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Περιοχή:</label></td>
				<td><input name="perioxi" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Εισάγετε Χώρα:</label></td>
				<td><input name="xwra" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Καταχώριση Πληροφοριών Κατοικίας και Τέλος" style="font-size:1em" class="btn btn-success"/></td>
                <td></td>
                <td><input type="button" value="Ακύρωση Εγγραφής" onclick="window.location.href='index.php/cancel'" style="font-size:1em" class="btn btn-danger"/></td>
			</tr>
		</table>
	</form>

</body>
</html>



<?php
	
		
		if (isset($_POST['xwra']))
		{

			$con = connect_db('central_db');
			
			$query_string = "SELECT * FROM user_id";
			$result = $con->query($query_string);
			
			
			while ($row = $result->fetch_array())
			{
				
				$nomos = $_POST['nomos'];
				$dimos = $_POST['dimos'];
				$city = $_POST['city'];
				$address = $_POST['address'];
				$tk = intval($_POST['tk']);
				$perioxi = $_POST['perioxi'];
				$xwra = $_POST['xwra'];
							
				// define query
				$query_string = "INSERT INTO address VALUES (".intval($row['user_id']).", '".$nomos."', '".$dimos."', '".$city."', '".$address."', ".$tk.", '".$perioxi."', '".$xwra."');";
				$con->query($query_string);
				
				
				$query_string = "TRUNCATE TABLE user_id";
				$con->query($query_string);
				
				
				$con->close();
				
				header('Location: http://localhost/HFPM_WebApp_J/index.php/success');
				
				break;
			}
			
			
			if (!$result->num_rows) header('Location: http://localhost/HFPM_WebApp_J/index.php/error');
			
			
			
		}
				


?>