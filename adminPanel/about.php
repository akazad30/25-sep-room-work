<?php
	$con = mysqli_connect("localhost","root","","editorDB");		
	if(isset($_POST['submit']))
	{
		$Image = addslashes(file_get_contents($_FILES['Image']['tmp_name']));

		$HeadingId = $_POST['HeadingId'];
		$HeadingName = $_POST['HeadingName'];
		$HeadingTitle = $_POST['HeadingTitle'];
		$HeadingStatus = $_POST['HeadingStatus'];
		$ImageDescription = $_POST['ImageDescription'];
		$HeadingDescription = $_POST['HeadingDescription'];
		echo $HeadingTitle;
		
						
	
		
			 /* 
			$sql = "INSERT INTO aboutus(managemenu,ordering,contenttile,description,Image)
				VALUES ('$managemenu','$ordering','$contenttitle','$description','$Image')";

				if ($con->query($sql) === TRUE) {
					echo "New record created successfully";
				} else {
					echo "Error: " . $sql . "<br>" . $con->error;
				} 
				*/
				
				// Data insert into Heading Table
					$HeadingSQL = "INSERT INTO heading(HeadingId,HeadingDesc,Status,HeadingTitle)
					VALUES ('$HeadingId','$HeadingName','$HeadingStatus','$HeadingTitle')";
					
					$a = $con->query($HeadingSQL);
					
				//Data insert into Image Table
					$ImageSQL = "INSERT INTO image(HeadingId,ImgDesc,Image,Status)
					VALUES ('$HeadingId','$ImageDescription','$Image','$HeadingStatus')";
					$b = $con->query($ImageSQL);
					
				// Data insert into Description Table
					$DescriptionSQL = "INSERT INTO description(HeadingId,ContentDesc,Status,HeadingTitle)
					VALUES ('$HeadingId','$HeadingDescription','$HeadingStatus','$HeadingTitle')";
					$c = $con->query($DescriptionSQL);
					
					if(($a && $b && $c )=== TRUE)
					{
						echo "New record successfully inserted";
					}
					else
					{
						echo "Not inserted";
					}
					
					
					
					
					
					
	}

?>