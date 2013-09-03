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
	
	
	function confirm_exchange(before_id, after_id)
	{
		if (confirm('Είστε σίγουροι ότι θέλετε να ανταλλάξετε αυτά τα καθήκοντα;'))
		{
			window.location.href='http://localhost/HFPM_WebApp_J/index.php/exchange-request?before=' + before_id + '&after=' + after_id;
		}
	}
	
	
	function confirm_accept(id)
	{
		if (confirm('Είστε σίγουροι ότι θέλετε να αλλάξετε αυτo τo καθήκον;'))
		{
			window.location.href='http://localhost/HFPM_WebApp_J/index.php/do-accept-request?duty_id=' + id;
		}
	}
	

</script>

<style type="text/css">
	
	.list table, th, td
	{
		border: 1px solid black;
	}
	
	.list th
	{
		background-color:#06F;
		color:#FFF;
	}
	
</style>

</head>


<body>
	
	
	<h3>Λίστα διαθέσιμων προγραμμάτων προς αλλαγή:</h3>
	
	<table class="list">
		
	
	<?php
		
		$con = connect_db('central_db');
		
		
		$query_string  = "SELECT cl.id, cl.request_date, cl.request_start_time, p.duty_type, p.location FROM change_list AS cl";
		$query_string .= " INNER JOIN program AS p ON p.program_id=cl.id";
		$query_string .= " WHERE cl.id=".$_GET['duty_id'];
		$result = $con->query($query_string);
		
		
		$i=1;
		while ($change_list = $result->fetch_array())
		{			
			
			
			$query_string  = "SELECT u.name_user, u.surname_user, u.department, p.location, p.duty_type, p.date, p.duty_start_time, p.duty_end_time, p.program_id FROM program AS p";
			$query_string .= " INNER JOIN users AS u ON u.user_id=p.user_id";
			$query_string .= " WHERE p.date='".$change_list['request_date']."'";
			$query_string .= " AND p.duty_type='".$change_list['duty_type']."'";
			$query_string .= " AND p.location='".$change_list['location']."'";
			if ($change_list['request_start_time'] != NULL)
			{
				$query_string .= " AND duty_start_time='".$change_list['request_start_time']."'";
			}
			$result2 = $con->query($query_string);
			
			
			while ($program = $result2->fetch_array())
			{
				
					
				if ($i==1)
				{
					echo '<tr>';
					echo '	<th><label>Όνομα</label></th>';
					echo '	<th><label>Επίθετο</label></th>';
					echo '	<th><label>Τμήμα</label></th>';
					echo '	<th><label>Νοσοκομειακή Μονάδα</label></th>';
					echo '	<th><label>Τύπος</label></th>';
					echo '	<th><label>Ημερομηνία</label></th>';
					echo '	<th><label>Ώρα Έναρξης</label></th>';
					echo '	<th><label>Ώρα Λήξης</label></th>';
					echo '	<th><label>Ενέργεια</label></th>';
					echo '</tr>';
				}
				
				
				echo "<tr>";
				echo "	<td>".$program['name_user']."</td>";
				echo "	<td>".$program['surname_user']."</td>";
				echo "	<td>".$program['department']."</td>";
				echo "	<td>".$program['location']."</td>";
				echo "	<td>".$program['duty_type']."</td>";
				echo "	<td>".$program['date']."</td>";
				echo "	<td>".$program['duty_start_time']."</td>";
				echo "	<td>".$program['duty_end_time']."</td>";
				echo '	<td><input type="button" onclick="confirm_exchange('.$change_list['id'].', '.$program['program_id'].');" value="Ανταλλαγή" class="btn btn-success"/></td>';
				echo "</tr>";
				
				$i++;
				
				
			} // while program
			
			
			
		} // while change_list
		
		
		if ($i==1)
		{
			echo "Δεν υπάρχουν καθήκοντα άλλων χρηστών με τα οποία μπορεί να ανταλλαχθεί το παρόν.<br>";
			echo '<input type="button" onclick="confirm_accept('.$_GET['duty_id'].');" value="Αλλαγή" class="btn btn-success"/>';
		}
		
		
		$con->close();
		
	?>
	</table>
	
</body>
</html>