<?php 
	$page = 'register_form';
	include 'include/header.php'; 
	include 'db_connect.php'; 

	if($_POST["Save"]){
		$Firstname = $_POST["Firstname"];
		$Sirname = $_POST["Sirname"];
		$Mtitle = $_POST["Mtitle"];
		$Phone = $_POST["Phone"];
		$Email = $_POST["Email"];
		$Password = $_POST["Password"];
		$sql = "INSERT INTO users (Firstname,Sirname,Mtitle,Phone,Email,Password,Online) VALUES ('$Firstname','$Sirname','$Mtitle','$Phone','$Email','$Password','Offline')";
		mysqli_query($db,$sql);
		?><script> window.location="chatindex.php"; </script><?php
	}
?>
  <style type="text/css">
    body {
      font-family: roboto;
    }

    table {
      margin: 0px auto;
    }
  </style>

<br><br>
  <center>
    <h2>Register Form<br /></h2>
  </center>
	<form method="POST">
		<table>
			<tr>
				<td><b>Firstname</b></td>
				<td><b>:</b></td>
				<td><input name="Firstname"></td>
			</tr>
			<tr>
				<td><b>Sirname</b></td>
				<td><b>:</b></td>
				<td><input name="Sirname"></td>
			</tr>
			<tr>
				<td><b>Title</b></td>
				<td><b>:</b></td>
				<td>
					<select name="Mtitle">
						<option value="">-Title-</option>
						<option value="Mr">Mr</option>
						<option value="Mrs">Mrs</option>
						<option value="Miss">Miss</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><b>Phone</b></td>
				<td><b>:</b></td>
				<td><input name="Phone"></td>
			</tr>
			<tr>
				<td><b>Email</b></td>
				<td><b>:</b></td>
				<td><input name="Email" type="email"></td>
			</tr>
			<tr>
				<td><b>Password</b></td>
				<td><b>:</b></td>
				<td><input name="Password" type="password"></td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" name="Save" value="Register">
				</td>
			</tr>
		</table>
	</form>

  <?php
  include 'db_connect.php';
  ?>

  
</body>

</html>