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

function edit()
{
	document.getElementById('system-message').innerHTML  = '<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Η τροποποίηση των στοιχείων ήταν επιτυχής</p></div></div>';
}

function deleted()
{
	document.getElementById('system-message').innerHTML  = '<div class="alert alert-message"><a class="close" data-dismiss="alert">×</a><h4 class="alert-heading">Μήνυμα</h4><div><p>Η διαγραφή ήταν επιτυχής</p></div></div>';
}

</script>

<style type="text/css">
	
	table, th, td
	{
		border: 1px solid black;
	}
	
	th
	{
		background-color:#06F;
		color:#FFF;
	}
</style>
<?php
	if (isset($_GET['edit'])) echo '<script> edit(); </script>';
	if (isset($_GET['delete'])) echo '<script> deleted(); </script>';
?>

</head>


<body>
	
	<table>
		<tr>
			<th><label>Επεξεργασία</label></th>
			<th><label>Ομάδα</label></th>
			<th><label>Όνομα</label></th>
			<th><label>Επίθετο</label></th>
			<th><label>Όνομα Χρήστη</label></th>
			<th><label>ΑΜΚΑ</label></th>
			<th><label>Τμήμα</label></th>
			<th><label>Σταθερό</label></th>
			<th><label>Κινητό</label></th>
		</tr>
	
	<?php
		
		

		
		$con = connect_db('central_db');
		
		$query_string  = "SELECT u.user_id, ut.team_id, ut.team_name, u.name_user, u.surname_user, u.username, u.amka, u.department, pn.telephone, pn.mobile";
		$query_string .= " FROM `users` AS u";
		$query_string .= " INNER JOIN `phone_numbers` AS pn ON u.user_id=pn.user_id";
		$query_string .= " INNER JOIN `address` AS a ON u.user_id=a.user_id";
		$query_string .= " INNER JOIN `user_team` AS ut ON u.user_team = ut.team_id";
		$users = $con->query($query_string);
		
		
		while ($row = $users->fetch_array())
		{
			
			echo "<tr>";
			echo '<td><br><input type="button" onclick="window.location.href=\'index.php/edit-user?user_id='.$row['user_id'].'\'" value="Επεξεργασία" class="btn btn-primary"/>';
			echo '<br><input type="button" onclick="window.location.href=\'index.php/delete-user?user_id='.$row['user_id'].'\'" value=" Διαγραφή " class="btn btn-danger"/><br></td>';
			echo "<td>".$row['team_name']."</td>";
			echo "<td>".$row['name_user']."</td>";
			echo "<td>".$row['surname_user']."</td>";
			echo "<td>".$row['username']."</td>";
			echo "<td>".$row['amka']."</td>";
			echo "<td>".$row['department']."</td>";
			echo "<td>".$row['telephone']."</td>";
			echo "<td>".$row['mobile']."</td>";
			echo "</tr>";
			
		}
		
		$con->close();
		
	?>

	</table>
	
</body>
</html>