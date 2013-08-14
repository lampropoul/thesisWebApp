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


	function deleted()
	{
		document.getElementById('system-message').innerHTML  = '<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Η διαγραφή ήταν επιτυχής</p></div></div>';
	}
	
	function confirm_delete(id)
	{
		if (confirm('Είστε σίγουροι ότι θέλετε να διαγράψετε το συγκεκριμένο καθήκον;'))
		{
			window.location.href='index.php/delete-duty?duty_id=' + id;
		}
	}
	
	function confirm_delete_prog()
	{
		if (confirm('Είστε σίγουροι ότι θέλετε να διαγράψετε το συγκεκριμένο πρόγραμμα;'))
		{
			window.location.href='index.php/delete-program';
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
<?php
	if (isset($_GET['delete'])) echo '<script> deleted(); </script>';
?>

</head>


<body>
	
    <h3 style="color:#39F">
    <?php
		$con = connect_db('central_db');
		
		$query_string  = "SELECT progname FROM progname";
		$result = $con->query($query_string);
		
		while ($row = $result->fetch_array())
		{	
			echo $row['progname'];
		}
		
		?>
    </h3>
    
	<table class="list">
		<tr>
			<th><label>Ημερομηνία</label></th>
			<th><label>Τύπος</label></th>
			<th><label>Ώρα Έναρξης</label></th>
			<th><label>Ώρα Λήξης</label></th>
			<th><label>Νοσοκομειακή Μονάδα</label></th>
			<th><label>Όνομα</label></th>
			<th><label>Επίθετο</label></th>
			<th><label>Ενέργεια</label></th>
		</tr>
	
	<?php
		
		
		$con = connect_db('central_db');
		
		$query_string  = "SELECT progname FROM progname";
		$result = $con->query($query_string);
		
		while ($row = $result->fetch_array())
		{	
			$progname = $row['progname'];
		}
		
		if (!isset($progname)) header('Location: index.php/error');
		
		
		
		$query_string   = "SELECT p.date, p.duty_type, p.duty_start_time, p.duty_end_time, p.location, u.name_user, u.surname_user, p.program_id FROM program AS p";
		$query_string  .= " INNER JOIN users AS u ON p.user_id=u.user_id WHERE p.program_name='".$progname."'";
		$result = $con->query($query_string);
		
		while ($row = $result->fetch_array())
		{
			
			echo "<tr>";
			echo "<td>".$row['date']."</td>";
			echo "<td>".$row['duty_type']."</td>";
			echo "<td>".$row['duty_start_time']."</td>";
			echo "<td>".$row['duty_end_time']."</td>";
			echo "<td>".$row['location']."</td>";
			echo "<td>".$row['name_user']."</td>";
			echo "<td>".$row['surname_user']."</td>";
			echo '<td><input type="button" onclick="confirm_delete('.$row['program_id'].');" value="Διαγραφή Καθήκοντος" class="btn btn-danger"/></td>';
			echo "</tr>";
			
		}
		
		
		$con->close();
		
	?>
    </table>
    
    <table>
    	<tr>
        	<td><input type="button" onclick="confirm_delete_prog();" value="Διαγραφή Όλου του Προγράμματος" class="btn btn-danger"/></td>
			<td><input type="button" onclick="window.location.href='index.php/list-programs'" value="Πίσω στην Λίστα" class="btn"/></td>
		</tr>
	</table>
    
</body>
</html>