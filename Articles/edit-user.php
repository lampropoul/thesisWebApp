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
	
	
	
	
	function validate_username(username)
	{
		if((username.value.length<6 || username.value.length>25)){
			alert('Το Όνομα Χρήστη πρέπει να είναι μεταξύ 6 και 25 χαρακτήρων');
			username.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate_username_space(username)
	{
		var reg = /^[A-Za-zΑ-Ωα-ω]/;
		if(reg.test(username.value) == false){
			alert('Το ονομά σας θα πρέπει να αρχίζει με γράμμα');
			username.focus();
		}
		else return true;
	}
	
	
	
	
	function validate_password(password)
	{
		if(password.value.length<6 || password.value.length>25){
			alert('Ο Κωδικός Χρήστη πρέπει να είναι μεταξύ 6 και 25 χαρακτήρων');
			password.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate_email(email) {
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		if(reg.test(email.value) == false) {
			alert('Μη έγκυρη Διεύθυνση Ηλεκτρονικού Ταχυδρομείου');
			email.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function same(str1, str2)
	{
		if(str1.value != str2.value){
			alert("Οι κωδικοί που εισάγατε δεν είναι όμοιοι");
			str2.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	
	function validate_nameOrSurname(nameOrSurname)
	{
		if(nameOrSurname.value.length<1){
			alert('Δεν έχετε ορίσει όνομα ή επώνυμο');
			nameOrSurname.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	function validate_amka(amka)
	{
		if(amka.value.length!=11){
			alert('Ο ΑΜΚΑ θα πρέπει να είναι ακριβώς 11 αριθμοί');
			amka.focus();
			return false;
		}
		return true;
	}
	
	
	
	
	
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
	
	
	
	
	function validate_all(username, password1, password2, email, name_user, surname_user, amka, stathero, kinito, fax, nomos, dimos, city, address, tk, perioxi, xwra)
	{
		if(!( validate_username(username) && validate_username_space(username) && validate_password(password1) && validate_password(password2) && same(password1, password2) && validate_email(email) && validate_nameOrSurname(name_user) && validate_nameOrSurname(surname_user) && validate_amka(amka) && validate_stathero(stathero) && validate_kinito(kinito) && validate_fax(fax) && validate_nomos(nomos) && validate_dimos(dimos) && validate_city(city) && validate_address(address) && validate_tk(tk) && validate_perioxi(perioxi) && validate_xwra(xwra) )) {
			return false;
		}
		return true;	
	}
	
	
	
	
	
</script>
</head>


<body>
	
	
						
	<form action="index.php/edit-user?user_id=<?php echo $_GET['user_id'];?>" name="register" method="post" onSubmit="javascript:return validate_all(username, password1, password2, email, name_user, surname_user, amka, stathero, kinito, fax, nomos, dimos, city, address, tk, perioxi, xwra);">
		<table border="0" >
		
			<tr>
				<td><h3>Γενικές Πληροφορίες</h3></td>
			</tr>
		
		<?php
			
			$team_id = 0;
			
			$con = connect_db('central_db');
			
			$query_string = "SELECT * FROM users WHERE user_id=".$_GET['user_id'];
			$result = $con->query($query_string);
			
			
			while ($row = $result->fetch_array())
			{
				
				$team_id = intval($row['user_team']);
				
				echo '<tr>';
				echo    '<td><label>Όνομα</label></td>';
				echo    '<td><input name="name_user" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['name_user'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Επώνυμο</label></td>';
				echo    '<td><input name="surname_user" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['surname_user'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Όνομα Χρήστη</label></td>';
				echo    '<td><input name="username" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['username'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Κωδικός</label></td>';
				echo    '<td><input name="password1" type="password" size="20" maxlength="30" autocomplete="off" value="'.$row['password'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Κωδικός (πάλι)</label></td>';
				echo    '<td><input name="password2" type="password" size="20" maxlength="30" autocomplete="off" value="'.$row['password'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>E-mail</label></td>';
				echo    '<td><input name="email" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['email'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>ΑΜΚΑ</label></td>';
				echo    '<td><input name="amka" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['amka'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Τμήμα</label></td>';
				echo    '<td><select name="department">';
				
				$query_string = "SELECT department_name FROM departments ORDER BY department_name";
				
				$dept = $con->query($query_string);
				
				while ($dep = $dept->fetch_array())
				{
					if($row['department']==$dep['department_name']) echo '<option value="'.$dep['department_name'].'" selected="selected">'.$dep['department_name'].'</option>';
					else echo '<option value="'.$dep['department_name'].'">'.$dep['department_name'].'</option>';
				}
				
				echo 	'</select></td>';
				echo '</tr>';
			}
					
			
		
			echo '<tr>';
			echo '   <td></td>';
			echo '</tr>';
			
			echo '<tr>';
			echo '   <td><h3>Πληροφορίες Τηλεφώνου</h3></td>';
			echo '</tr>';
		
		
			
			
			$query_string = "SELECT * FROM phone_numbers WHERE user_id=".$_GET['user_id'];
			$result = $con->query($query_string);
			
			
			while ($row = $result->fetch_array())
			{
				echo '<tr>';
				echo    '<td><label>Σταθερό</label></td>';
				echo    '<td><input name="stathero" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['telephone'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Κινητό</label></td>';
				echo    '<td><input name="kinito" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['mobile'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Φαξ</label></td>';
				echo    '<td><input name="fax" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['fax'].'"/></td>';
				echo '</tr>';
			}
					
			
		
			echo '<tr>';
			echo '   <td></td>';
			echo '</tr>';
			
			echo '<tr>';
			echo '   <td><h3>Πληροφορίες Κατοικίας</h3></td>';
			echo '</tr>';
		
		
			
			
			$query_string = "SELECT * FROM address WHERE user_id=".$_GET['user_id'];
			$result = $con->query($query_string);
			
			
			while ($row = $result->fetch_array())
			{
				echo '<tr>';
				echo    '<td><label>Νομός</label></td>';
				echo    '<td><input name="nomos" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['nomos'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Δήμος</label></td>';
				echo    '<td><input name="dimos" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['dimos'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Πόλη</label></td>';
				echo    '<td><input name="city" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['city'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Διεύθυνση</label></td>';
				echo    '<td><input name="address" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['address'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>ΤΚ</label></td>';
				echo    '<td><input name="tk" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['tk'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Περιοχή</label></td>';
				echo    '<td><input name="perioxi" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['perioxi'].'"/></td>';
				echo '</tr>';
				
				echo '<tr>';
				echo    '<td><label>Χώρα</label></td>';
				echo    '<td><input name="xwra" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['xwra'].'"/></td>';
				echo '</tr>';
			}
					
			
		
			echo '<tr>';
			echo '   <td></td>';
			echo '</tr>';
					
			
			
			if ($team_id == 1)
			{
				
				echo '<tr>';
				echo '   <td><h3>Πληροφορίες Ιατρικού Προσωπικού</h3></td>';
				echo '</tr>';
				
				
				$query_string = "SELECT * FROM doctor_users WHERE user_id=".$_GET['user_id'];
				$result = $con->query($query_string);
				
				
				while ($row = $result->fetch_array())
				{
					
					echo '<tr>';
					echo    '<td><label>Θέση</label></td>';
					echo    '<td><input name="thesi" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['thesi'].'"/></td>';
					echo '</tr>';
					
				
					echo '<tr>';
					echo    '<td><label>Βαθμίδα</label></td>';
					echo    '<td><select name="bathmida">';
					
					$query_string = "SELECT name FROM bathmides WHERE team_id=1";
					
					$result = $con->query($query_string);
					
					while ($bat = $result->fetch_array())
					{
						if($row['bathmida'] == $bat['name']) echo '<option value="'.$bat['name'].'" selected="selected">'.$bat['name'].'</option>';
						else echo '<option value="'.$bat['name'].'">'.$bat['name'].'</option>';
					}
					
					echo 	'</select></td>';
					echo '</tr>';
					
					
				
					echo '<tr>';
					echo    '<td><label>Ειδικότητα</label></td>';
					echo    '<td><select name="eidikotita">';
					
					$query_string = "SELECT name FROM eidikotites WHERE team_id=1";
					
					$result = $con->query($query_string);
					
					while ($eid = $result->fetch_array())
					{
						if($row['eidikotita'] == $eid['name']) echo '<option value="'.$eid['name'].'" selected="selected">'.$eid['name'].'</option>';
						else echo '<option value="'.$eid['name'].'">'.$eid['name'].'</option>';
					}
					
					echo 	'</select></td>';
					echo '</tr>';
					
				}// while
				
				
			}
			else if ($team_id == 2)
			{
				
				echo '<tr>';
				echo '   <td><h3>Πληροφορίες Νοσηλευτικού Προσωπικού</h3></td>';
				echo '</tr>';
				
				
				$query_string = "SELECT * FROM nurse_user WHERE user_id=".$_GET['user_id'];
				$result = $con->query($query_string);
				
				
				while ($row = $result->fetch_array())
				{
					
					echo '<tr>';
					echo    '<td><label>Θέση</label></td>';
					echo    '<td><input name="thesi" type="text" size="20" maxlength="30" autocomplete="off" value="'.$row['thesi'].'"/></td>';
					echo '</tr>';
					
				
					echo '<tr>';
					echo    '<td><label>Βαθμίδα</label></td>';
					echo    '<td><select name="bathmida">';
					
					$query_string = "SELECT name FROM bathmides WHERE team_id=2";
					
					$result = $con->query($query_string);
					
					while ($bat = $result->fetch_array())
					{
						if($row['bathmida'] == $bat['name']) echo '<option value="'.$bat['name'].'" selected="selected">'.$bat['name'].'</option>';
						else echo '<option value="'.$bat['name'].'">'.$bat['name'].'</option>';
					}
					
					echo 	'</select></td>';
					echo '</tr>';
					
					
				
					echo '<tr>';
					echo    '<td><label>Ειδικότητα</label></td>';
					echo    '<td><select name="eidikotita">';
					
					$query_string = "SELECT name FROM eidikotites WHERE team_id=2";
					
					$result = $con->query($query_string);
					
					while ($eid = $result->fetch_array())
					{
						if($row['eidikotita'] == $eid['name']) echo '<option value="'.$eid['name'].'" selected="selected">'.$eid['name'].'</option>';
						else echo '<option value="'.$eid['name'].'">'.$eid['name'].'</option>';
					}
					
					echo 	'</select></td>';
					echo '</tr>';
					
				}// while
				
				
			}
			
			
		?>
			<tr>
				<td><input type="submit" value="Ενημέρωση" style="font-size:1em" class="btn btn-primary"/></td>
				<td></td>
				<td><input type="button" value="Ακύρωση" onclick="window.location.href='index.php/list-users'" style="font-size:1em" class="btn"/></td>
			</tr>
			
		</table>
	</form>

</body>
</html>



<?php
	
		
		if (isset($_POST['username']))
		{
			
			$con = connect_db('central_db');
			
			
			
			$name_user = $_POST['name_user'];
			$surname_user = $_POST['surname_user'];
			$username = $_POST['username'];
			$password = $_POST['password1'];
			$email = $_POST['email'];
			$amka = $_POST['amka'];
			$department = $_POST['department'];
			
			$query_string  = "UPDATE users SET name_user='".$name_user."', surname_user='".$surname_user."', username='".$username."', password='".$password."', email='".$email."', amka='".$amka."', department='".$department."'";
			$query_string .= " WHERE user_id=".$_GET['user_id'];
			$con->query($query_string);			
			
			
			$stathero = $_POST['stathero'];
			$kinito = $_POST['kinito'];
			$fax = $_POST['fax'];
			
			$query_string  = "UPDATE phone_numbers SET telephone='".$stathero."', mobile='".$kinito."', fax='".$fax."'";
			$query_string .= " WHERE user_id=".$_GET['user_id'];
			$con->query($query_string);
			
			
			
			$nomos = $_POST['nomos'];
			$dimos = $_POST['dimos'];
			$city = $_POST['city'];
			$address = $_POST['address'];
			$tk = intval($_POST['tk']);
			$perioxi = $_POST['perioxi'];
			$xwra = $_POST['xwra'];
			
			$query_string  = "UPDATE address SET nomos='".$nomos."', dimos='".$dimos."', city='".$city."', address='".$address."', tk=".$tk.", perioxi='".$perioxi."', xwra='".$xwra."'";
			$query_string .= " WHERE user_id=".$_GET['user_id'];
			$con->query($query_string);
			
			
			if ($team_id == 1)
			{
				
				$thesi = $_POST['thesi'];
				$bathmida = $_POST['bathmida'];
				$eidikotita = $_POST['eidikotita'];
				
				$query_string = "UPDATE doctor_users SET thesi='".$thesi."', bathmida='".$bathmida."', eidikotita='".$eidikotita."'";
				$query_string .= " WHERE user_id=".$_GET['user_id'];
				
				$con->query($query_string);
				
			}
			else if ($team_id == 2)
			{
				
				$thesi = $_POST['thesi'];
				$bathmida = $_POST['bathmida'];
				$eidikotita = $_POST['eidikotita'];
				
				$query_string = "UPDATE nurse_user SET thesi='".$thesi."', bathmida='".$bathmida."', eidikotita='".$eidikotita."'";
				$query_string .= " WHERE user_id=".$_GET['user_id'];
				
				$con->query($query_string);
				
			}
			
			header('Location: index.php/list-users?edit=1');
			
			
		}
				


?>