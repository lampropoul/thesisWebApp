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

<link rel="stylesheet" type="text/css" href="https://dl.dropboxusercontent.com/u/81059068/CSS%20for%20thesis%20WebApp/bootstrap.css" />
<link href="https://dl.dropboxusercontent.com/u/81059068/CSS%20for%20thesis%20WebApp/bootstrap-combined.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="screen" href="https://dl.dropboxusercontent.com/u/81059068/CSS%20for%20thesis%20WebApp/bootstrap-datetimepicker.min.css" />



<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">google.load("mootools", "1.1.2");</script>
<script language="javascript" type="text/javascript" src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/jquery-1.8.3.min.js"></script>

<script type="text/javascript">
	
	
	var i=1;
	
	function new_duty()
	{
		
		i++;
		
		var html = "<table><tr>";
		html += "		<td><h3>Καθήκον " + i + "</h3></td>";
		html += "	</tr>";
		html += "	<tr>";
		html += "		<td><label>Ημερομηνία</label></td>";
		html += "		<td><input name=\"date" + i + "\" id=\"id_date" + i + "\" type=\"text\" size=\"20\" maxlength=\"30\"  autocomplete=\"on\" /></td>";
		html += "	</tr>";
		html += "	<tr>";
		html += "		<td><label>Τύπος Καθήκοντος</label></td>";
		html += "		<td>";
		html += "		<select id=\"id_type" + i + "\" name=\"type" + i + "\">";
		html += "		";
		html += "		</select>";
		html += "		</td>";
		html += "	</tr>";
		html += "	";
		html += "	<tr>";
		html += "		<td><label>Ώρα Έναρξης</label></td>";
		html += "		<td>";
		html += "		<select id=\"id_start_time" + i + "\" name=\"start_time" + i + "\">";
		html += "			<option value=\"0\" selected=\"selected\">00:00:00</option>";
		html += "			<option value=\"1\">01:00:00</option>";
		html += "			<option value=\"2\">02:00:00</option>";
		html += "			<option value=\"3\">03:00:00</option>";
		html += "			<option value=\"4\">04:00:00</option>";
		html += "			<option value=\"5\">05:00:00</option>";
		html += "			<option value=\"6\">06:00:00</option>";
		html += "			<option value=\"7\">07:00:00</option>";
		html += "			<option value=\"8\">08:00:00</option>";
		html += "			<option value=\"9\">09:00:00</option>";
		html += "			<option value=\"10\">10:00:00</option>";
		html += "			<option value=\"11\">11:00:00</option>";
		html += "			<option value=\"12\">12:00:00</option>";
		html += "			<option value=\"13\">13:00:00</option>";
		html += "			<option value=\"14\">14:00:00</option>";
		html += "			<option value=\"15\">15:00:00</option>";
		html += "			<option value=\"16\">16:00:00</option>";
		html += "			<option value=\"17\">17:00:00</option>";
		html += "			<option value=\"18\">18:00:00</option>";
		html += "			<option value=\"19\">19:00:00</option>";
		html += "			<option value=\"20\">20:00:00</option>";
		html += "			<option value=\"21\">21:00:00</option>";
		html += "			<option value=\"22\">22:00:00</option>";
		html += "			<option value=\"23\">23:00:00</option>";
		html += "		</select>";
		html += "		</td>";
		html += "	</tr>";
		html += "	";
		html += "	<tr>";
		html += "		<td><label>Ώρα Λήξης</label></td>";
		html += "		<td>";
		html += "		<select id=\"id_end_time" + i + "\" name=\"end_time" + i + "\">";
		html += "			<option value=\"1\" selected=\"selected\">01:00:00</option>";
		html += "			<option value=\"2\">02:00:00</option>";
		html += "			<option value=\"3\">03:00:00</option>";
		html += "			<option value=\"4\">04:00:00</option>";
		html += "			<option value=\"5\">05:00:00</option>";
		html += "			<option value=\"6\">06:00:00</option>";
		html += "			<option value=\"7\">07:00:00</option>";
		html += "			<option value=\"8\">08:00:00</option>";
		html += "			<option value=\"9\">09:00:00</option>";
		html += "			<option value=\"10\">10:00:00</option>";
		html += "			<option value=\"11\">11:00:00</option>";
		html += "			<option value=\"12\">12:00:00</option>";
		html += "			<option value=\"13\">13:00:00</option>";
		html += "			<option value=\"14\">14:00:00</option>";
		html += "			<option value=\"15\">15:00:00</option>";
		html += "			<option value=\"16\">16:00:00</option>";
		html += "			<option value=\"17\">17:00:00</option>";
		html += "			<option value=\"18\">18:00:00</option>";
		html += "			<option value=\"19\">19:00:00</option>";
		html += "			<option value=\"20\">20:00:00</option>";
		html += "			<option value=\"21\">21:00:00</option>";
		html += "			<option value=\"22\">22:00:00</option>";
		html += "			<option value=\"23\">23:00:00</option>";
		html += "			<option value=\"0\">00:00:00</option>";
		html += "		</select>";
		html += "		</td>";
		html += "	</tr>";
		html += "	";
		html += "	<tr>";
		html += "		<td><label>Νοσοκομειακή Μονάδα</label></td>";
		html += "		<td>";
		html += "		<select id=\"id_location" + i + "\" name=\"location" + i + "\">";
		html += "		";
		html += "		</select>";
		html += "		</td>";
		html += "	</tr>";
		html += "	";
		html += "	<tr>";
		html += "		<td><label>Χρήστης</label></td>";
		html += "		<td>";
		html += "		<select id=\"id_user" + i + "\" name=\"user" + i + "\">";
		html += "		";
		html += "		</select>";
		html += "		</td>";
		html += "	</tr></table>";
			
		document.getElementById('duty'+i).innerHTML = html;
		select_type_loc_user();
	}
	
	
	
	
	function select_type_loc_user()
	{
		
		var html = "<?php
						
						$con = connect_db('central_db');
						
						$query_string = "SELECT duty_name FROM duties ORDER BY duty_name";
						$result = $con->query($query_string);
						
						$i=1;
						while ($row = $result->fetch_array())
						{
							if($i==1) echo '<option value=\"'.$row['duty_name'].'\" selected=\"selected\">'.$row['duty_name'].'</option>';
							else echo '<option value=\"'.$row['duty_name'].'\">'.$row['duty_name'].'</option>';
							$i++;
						}
						
					?>";
		
		document.getElementById('id_type'+i).innerHTML = html;
		
		
		html = "<?php
					
					$con = connect_db('central_db');
					
					$query_string = "SELECT location_name FROM locations ORDER BY location_name";
					$result = $con->query($query_string);
					
					$i=1;
					while ($row = $result->fetch_array())
					{
						if($i==1) echo '<option value=\"'.$row['location_name'].'\" selected=\"selected\">'.$row['location_name'].'</option>';
						else echo '<option value=\"'.$row['location_name'].'\">'.$row['location_name'].'</option>';
						$i++;
					}
					
				?>";
		
		document.getElementById('id_location'+i).innerHTML = html;
		
		html = "<?php
					
					$con = connect_db('central_db');
					
					$query_string = "SELECT user_id, surname_user, name_user FROM users ORDER BY surname_user";
					$result = $con->query($query_string);
					
					$i=1;
					while ($row = $result->fetch_array())
					{
						if($i==1) echo '<option value=\"'.$row['user_id'].'\" selected=\"selected\">'.$row['surname_user'].' '.$row['name_user'].'</option>';
						else echo '<option value=\"'.$row['user_id'].'\">'.$row['surname_user'].' '.$row['name_user'].'</option>';
						$i++;
					}
					
				?>";
		
		document.getElementById('id_user'+i).innerHTML = html;
		
	}
	
	
	
	function gt(str1, str2)
	{
		if(parseInt(str1.value) > parseInt(str2.value)){
			alert("Η ώρα λήξης είναι πριν την ώρα έναρξης");
			str2.focus();
			return false;
		}
		return true;
	}
	
	
	
	function validate_progname(progname)
	{
		if(progname.value.length<1){
			alert('Δεν έχετε ορίσει όνομα προγράμματος');
			progname.focus();
			return false;
		}
		return true;
	}
	
	
	
	function validate_date(date)
	{
		if(date.value.length<1){
			alert('Δεν έχετε ορίσει ημερομηνία');
			date.focus();
			return false;
		}
		return true;
	}
	


	function validate(progname, date, start_time, end_time)
	{
		if( !(validate_progname(progname) && validate_date(date) && gt(start_time, end_time) )) {
			return false;
		}
		return true;	
	}

	
	
	function created()
	{
		document.getElementById('system-message').innerHTML  = '<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Το πρόγραμμα δημιουργήθηκε επιτυχώς</p></div></div>';
	}


	


</script>

<?php
	if (isset($_GET['created'])) echo '<script> created(); </script>';
?>

</head>


<body onload="select_type_loc_user()">
	
				<!--<div id="datetimepicker1" class="input-append date" style="width:auto">
                  <input type="text" id="delete_date_meteo"></input>
                  <span class="add-on">
                    <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
                  </span>
                </div>                
				<script type="text/javascript"
                 src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/jquery.min.js">
                </script> 
                <script type="text/javascript"
                 src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/bootstrap.min.js">
                </script>
                <script type="text/javascript"
                 src="https://dl.dropboxusercontent.com/u/81059068/JS%20for%20thesis%20WebApp/bootstrap-datetimepicker.min.js">
                </script>
                <script type="text/javascript">
                  $('#datetimepicker1').datetimepicker({
                    format: 'yyyy-MM-dd',
                    language: 'en-US',
                    pickTime: false
                  });
                </script>-->
						
	<form action="index.php/create-program" name="register" method="post" onSubmit="javascript:return validate(progname, date1, start_time1, end_time1);">
		<table border="0" >
			<tr>
				<td><label>Όνομα Προγράμματος</label></td>
				<td><input name="progname" id="uname" type="text" size="20" maxlength="30"  autocomplete="off" /></td>
			</tr>
			
			<!-- DUTY 1 -->
            
			<tr>
				<td><h3>Καθήκον 1</h3></td>
			</tr>
			<tr>
				<td><label>Ημερομηνία</label></td>
				<td><input name="date1" id="uname" type="text" size="20" maxlength="30"  autocomplete="on" /></td>
                
			</tr>
			<tr>
				<td><label>Τύπος Καθήκοντος</label></td>          		
				<td>
				<select id="id_type1" name="type1">
				
				</select>
				</td>
			</tr>
			
			<tr>
				<td><label>Ώρα Έναρξης</label></td>          		
				<td>
				<select name="start_time1">
					<option value="0" selected="selected">00:00:00</option>
					<option value="1">01:00:00</option>
					<option value="2">02:00:00</option>
					<option value="3">03:00:00</option>
					<option value="4">04:00:00</option>
					<option value="5">05:00:00</option>
					<option value="6">06:00:00</option>
					<option value="7">07:00:00</option>
					<option value="8">08:00:00</option>
					<option value="9">09:00:00</option>
					<option value="10">10:00:00</option>
					<option value="11">11:00:00</option>
					<option value="12">12:00:00</option>
					<option value="13">13:00:00</option>
					<option value="14">14:00:00</option>
					<option value="15">15:00:00</option>
					<option value="16">16:00:00</option>
					<option value="17">17:00:00</option>
					<option value="18">18:00:00</option>
					<option value="19">19:00:00</option>
					<option value="20">20:00:00</option>
					<option value="21">21:00:00</option>
					<option value="22">22:00:00</option>
					<option value="23">23:00:00</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<td><label>Ώρα Λήξης</label></td>          		
				<td>
				<select name="end_time1">
					<option value="1" selected="selected">01:00:00</option>
					<option value="2">02:00:00</option>
					<option value="3">03:00:00</option>
					<option value="4">04:00:00</option>
					<option value="5">05:00:00</option>
					<option value="6">06:00:00</option>
					<option value="7">07:00:00</option>
					<option value="8">08:00:00</option>
					<option value="9">09:00:00</option>
					<option value="10">10:00:00</option>
					<option value="11">11:00:00</option>
					<option value="12">12:00:00</option>
					<option value="13">13:00:00</option>
					<option value="14">14:00:00</option>
					<option value="15">15:00:00</option>
					<option value="16">16:00:00</option>
					<option value="17">17:00:00</option>
					<option value="18">18:00:00</option>
					<option value="19">19:00:00</option>
					<option value="20">20:00:00</option>
					<option value="21">21:00:00</option>
					<option value="22">22:00:00</option>
					<option value="23">23:00:00</option>
					<option value="0">00:00:00</option>
				</select>
				</td>
			</tr>
			
			<tr>
				<td><label>Νοσοκομειακή Μονάδα</label></td>          		
				<td>
				<select id="id_location1" name="location1">
				
				</select>
				</td>
			</tr>
			
			<tr>
				<td><label>Χρήστης</label></td>          		
				<td>
				<select id="id_user1" name="user1">
				
				</select>
				</td>
			</tr>
            
		</table>
			<!-- END OF DUTY 1 -->
			
			
			<div id="duty2"></div>
			<div id="duty3"></div>
			<div id="duty4"></div>
			<div id="duty5"></div>
			<div id="duty6"></div>
			<div id="duty7"></div>
			<div id="duty8"></div>
			<div id="duty9"></div>
			<div id="duty10"></div>
			
		
        <table>	
			<tr>
				<td><input type="submit" value="Δημιουργία Προγράμματος" style="font-size:1em" class="btn btn-success"/></td>
				<td></td>
				<td><input type="button" value="Προσθήκη Νέου Καθήκοντος" onclick="new_duty();" style="font-size:1em" class="btn"/></td>
			</tr>
		</table>
	</form>
	
</body>
</html>


<?php
	
	
		if (isset($_POST['progname']))
		{
			
			$con = connect_db('central_db');
				
			$i=1;
			while( isset($_POST['date'.$i]) )
			{
				$duty_type = $_POST['type'.$i];
				$location = $_POST['location'.$i];
				$user_id = $_POST['user'.$i];
				
				
				
				$duty_ok = false;
				$location_ok = false;
				
				$query_string = "SELECT * FROM declared_duties WHERE user_id=".$user_id." AND duty_type='".$duty_type."'";
				$result = $con->query($query_string);
				
				while ($row = $result->fetch_array())
				{
					$duty_ok = true;
				}
				
				$query_string = "SELECT * FROM declared_locations WHERE user_id=".$user_id." AND location='".$location."'";
				$result = $con->query($query_string);
				
				while ($row = $result->fetch_array())
				{
					$location_ok = true;
				}
				
				
				
				
				
				
				if ($duty_ok && $location_ok)
				{
					
					
					$progname = $_POST['progname'];
					$date = $_POST['date'.$i];
					$start_time = $_POST['start_time'.$i];
					$end_time = $_POST['end_time'.$i];
					
					
					$query_string = "INSERT INTO program VALUES (NULL, '".$date."', '".$duty_type."', '".$start_time.":00:00', '".$end_time.":00:00', '".$location."', ".$user_id.", '".$progname."')";
					$result = $con->query($query_string);
					
					// ******************** NOTIFY *********************** //
			
					$query_string  = "INSERT INTO notify_user VALUES (NULL, ".$user_id.", LAST_INSERT_ID(), 1, 'New program on ".$date."')";
					$con->query($query_string);
					
					
					header('Location: ?created=1');
				}
				else
				{
					header('Location: index.php/error');
				}
				
				
				
				
				
				$i++;
			
			}// while
			
		}// if
				


?>