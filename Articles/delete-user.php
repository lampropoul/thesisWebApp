<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>


<body>
	
	<form action="index.php/do-delete-user?user_id=<?php echo $_GET['user_id'];?>" name="register" method="post">
		<table border="0" >
			<tr>
				<td><input type="submit" value="Διαγραφή" style="font-size:1em" class="btn btn-danger"/></td>
				<td></td>
				<td><input type="button" value="Ακύρωση" onclick="window.location.href='index.php/list-users'" style="font-size:1em" class="btn"/></td>
			</tr>
		</table>
	</form>

</body>
</html>