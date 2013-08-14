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
	
	
	function confirm_delete(id)
	{
		if (confirm('Είστε σίγουροι ότι θέλετε να διαγράψετε το συγκεκριμένο αίτημα;'))
		{
			window.location.href='index.php/reject-request?duty_id=' + id;
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

	<table class="list">
		<tr>
			<th><label>Όνομα</label></th>
			<th><label>Επίθετο</label></th>
			<th><label>Σταθερό</label></th>
			<th><label>Κινητό</label></th>
			<th><label>Τμήμα</label></th>
			<th><label>Νοσοκομειακή Μονάδα</label></th>
			<th><label>Τύπος</label></th>
			<th><label>Ημερομηνία</label></th>
			<th><label>Ώρα Έναρξης</label></th>
			<th><label>Ώρα Λήξης</label></th>
			<th><label>Αίτηση Αλλαγής Ημέρας</label></th>
			<th><label>Αίτηση Αλλαγής Ώρας</label></th>
			<th><label>Ενέργεια</label></th>
		</tr>
	
	<?php
		
		
		$con = connect_db('central_db');
		
		
		$query_string   = "SELECT u.name_user, u.surname_user, pn.telephone, pn.mobile, u.department, p.location, p.duty_type, p.date, p.duty_start_time, p.duty_end_time, cl.request_date, cl.request_start_time, cl.id FROM change_list AS cl";
		$query_string  .= " INNER JOIN users AS u ON u.user_id=cl.user_id";
		$query_string  .= " INNER JOIN phone_numbers AS pn ON pn.user_id=cl.user_id";
		$query_string  .= " INNER JOIN program AS p ON p.program_id=cl.id";
		$result = $con->query($query_string);
		
		while ($row = $result->fetch_array())
		{
			
			$request_start_time = ($row['request_start_time']==NULL)?'Οποιαδήποτε':$row['request_start_time'];
			
			echo "<tr>";
			echo "	<td>".$row['name_user']."</td>";
			echo "	<td>".$row['surname_user']."</td>";
			echo "	<td>".$row['telephone']."</td>";
			echo "	<td>".$row['mobile']."</td>";
			echo "	<td>".$row['department']."</td>";
			echo "	<td>".$row['location']."</td>";
			echo "	<td>".$row['duty_type']."</td>";
			echo "	<td>".$row['date']."</td>";
			echo "	<td>".$row['duty_start_time']."</td>";
			echo "	<td>".$row['duty_end_time']."</td>";
			echo "	<td>".$row['request_date']."</td>";
			echo "	<td><b>".$request_start_time."</b></td>";
			echo '	<td><input type="button" onclick="window.location.href=\'index.php/accept-request?duty_id='.$row['id'].'\'" value="Αποδοχή" class="btn btn-success"/><br>';
			echo '		<input type="button" onclick="confirm_delete('.$row['id'].');" value="Απόρριψη" class="btn btn-danger"/></td>';
			echo "</tr>";
			
		}
		
		
		$con->close();
		
	?>
    </table>
    
</body>
</html>