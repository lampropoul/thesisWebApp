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
	
	
	
	
	function validate_register(username, password1, password2, email, name_user, surname_user, amka)
	{
		if(!(validate_username(username) && validate_username_space(username) && validate_password(password1) && validate_password(password2) && same(password1, password2) && validate_email(email) && validate_nameOrSurname(name_user) && validate_nameOrSurname(surname_user) && validate_amka(amka))) {
			return false;
		}
		return true;	
	}
	
	
	
	
	
</script>
</head>


<body>
	
				
	<form action="" name="register" method="post" onSubmit="javascript:return validate_register(username, password1, password2, email, name_user, surname_user, amka);">
		<table border="0" >
			<tr>
				<td><label for="uname">Εισάγετε Όνομα χρήστη:</label></td>
				<td><input name="username" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="pword1">Εισάγετε Κωδικό χρήστη:</label></td>          		
				<td><input name="password1" id="pword1" type="password" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="pword2">Επαναλάβετε Κωδικό χρήστη: </label></td>          		
				<td><input name="password2" id="pword2" type="password" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="eMail">Εισάγετε Email:</label></td>
				<td><input name="email" id="e-mail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="uname">Εισάγετε Όνομα:</label></td>
				<td><input name="name_user" id="name" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="pword1">Εισάγετε Επώνυμο:</label></td>          		
				<td><input name="surname_user" id="surname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="pword2">Εισάγετε Ομάδα χρήστη: </label></td>          		
				<td><!--<input name="user_team" id="pword2" type="text" size="20" maxlength="30"  autocomplete="off" />-->
				<select name="team">
				<?php
					
					$con = connect_db('central_db');
					
					// define query
					$query_string = "SELECT team_name FROM user_team ORDER BY team_name";
					//var_dump($query_string);
					// execute query
					$result = $con->query($query_string);
					//var_dump($result);
					$con->close();
					
					$i=1;
					while ($row = $result->fetch_array())
					{
						if($i==1) echo '<option value="'.$row['team_name'].'" selected="selected">'.$row['team_name'].'</option>';
						else echo '<option value="'.$row['team_name'].'">'.$row['team_name'].'</option>';
						$i++;
					}
					
				?>
				</select>
				</td>
			</tr>
			<tr>
				<td><label for="eMail">Εισάγετε ΑΜΚΑ:</label></td>
				<td><input name="amka" id="amka" type="text" size="20" maxlength="50"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label for="eMail">Εισάγετε Τμήμα:</label></td>
				<td><!--<input name="department" id="eMail" type="text" size="20" maxlength="50"  autocomplete="off" /></td>-->
				<select name="department">
				<?php
					
					$con = connect_db('central_db');
					
					// define query
					$query_string = "SELECT department_name FROM departments ORDER BY department_name";
					//var_dump($query_string);
					// execute query
					$result = $con->query($query_string);
					//var_dump($result);
					$con->close();
					
					$i=1;
					while ($row = $result->fetch_array())
					{
						if($i==1) echo '<option value="'.$row['department_name'].'" selected="selected">'.$row['department_name'].'</option>';
						else echo '<option value="'.$row['department_name'].'">'.$row['department_name'].'</option>';
						$i++;
					}
					
				?>
				</select>
				</td>
			</tr>
			<tr>
				<td><label>Εισάγετε Κατάσταση:</label></td>
				<td><input name="status" id="status" type="text" size="20" maxlength="50"  autocomplete="off" /></td>
			</tr>
			<tr>
				<td><label>Επιλέξτε Τύπους Καθηκόντων:</label></td>
				<td>
					<input type="checkbox" name="vardia" value="Βάρδια">Βάρδια<br>
					<input type="checkbox" name="efimeria" value="Εφημερία">Εφημερία<br>
					<input type="checkbox" name="kathimerina" value="Καθημερινά Ιατρεία">Καθημερινά Ιατρεία<br>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Καταχώριση Γενικών Πληροφοριών" style="font-size:1em" class="btn btn-success"/></td>
			</tr>
		</table>
	</form>

</body>
</html>



<?php
	
		
		if (isset($_POST['username']))
		{
			
			$con = connect_db('central_db');
			
			$query_string = "SELECT username FROM users WHERE username='".$_POST['username']."'";
			$result = $con->query($query_string);
			
			
			// den vre8ike kati opote kanw insert
			if ($result->fetch_array() == NULL)
			{
				
				$user_team_str = $_POST['team'];
				$name_user = $_POST['name_user'];
				$surname_user = $_POST['surname_user'];
				$username = $_POST['username'];
				$password = $_POST['password1'];
				$email = $_POST['email'];
				$amka = $_POST['amka'];
				$status = $_POST['status'];
				$department = $_POST['department'];
				
				
				$query_string = "SELECT team_id FROM user_team WHERE team_name='".$user_team_str."'";
				//var_dump($query_string);
				// execute query
				$result2 = $con->query($query_string);
				$row2 = $result2->fetch_array();
				$user_team_int = intval($row2['team_id']);
				
							
				// define query
				$query_string = "INSERT INTO users (user_team, name_user, surname_user, username, password, email, amka, status, department) VALUES (".$user_team_int.", '".$name_user."', '".$surname_user."', '".$username."', '".$password."', '".$email."', '".$amka."', '".$status."', '".$department."');";
				//var_dump($query_string);
				// execute query
				$result3 = $con->query($query_string);
				//var_dump($result);
				
				
				$query_string = "SELECT user_id FROM users WHERE username='".$username."'";
				$result4 = $con->query($query_string);
				$row4 = $result4->fetch_array();
				
				$query_string = "INSERT INTO user_id (user_id, step) VALUES (".intval($row4['user_id']).", 2)";
				//var_dump($query_string);
				// execute query
				$result4 = $con->query($query_string);
				
				
				// duty types
				
				if (isset($_POST['efimeria']))
				{
					$query_string = "INSERT INTO declared_duties VALUES (NULL, ".intval($row4['user_id']).", '".$_POST['efimeria']."')";
					$con->query($query_string);
				}
				if (isset($_POST['vardia']))
				{
					$query_string = "INSERT INTO declared_duties VALUES (NULL, ".intval($row4['user_id']).", '".$_POST['vardia']."')";
					$con->query($query_string);
				}
				if (isset($_POST['kathimerina']))
				{
					$query_string = "INSERT INTO declared_duties VALUES (NULL, ".intval($row4['user_id']).", '".$_POST['kathimerina']."')";
					$con->query($query_string);
				}
				
				
				$con->close();
				
				//$dir = explode( "\\", getcwd() );
				//echo 'Location: http://' + $_SERVER['SERVER_NAME'] + '/' + $dir[count($dir)-1] + '/index.php/doctor-info';
				if ($user_team_str == 'ΙΑΤΡΙΚΟ ΠΡΟΣΩΠΙΚΟ') header('Location: index.php/doctor-info');
				else if ($user_team_str == 'ΝΟΣΗΛΕΥΤΙΚΟ ΠΡΟΣΩΠΙΚΟ') header('Location: index.php/nurse-info');
				else header('Location: index.php/staff-info');
			}
			else
			{
				header('Location: index.php/error');
			}
			
			
		}
				


?>