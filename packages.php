<?php session_start(); ?>

<!DOCTYPE html>

<html lang="en">
	
	<!-- HEAD TAG STARTS -->

	<head>
	
  		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
		<title>Tour Packages | tourism_management</title>
    
    	<link href="css/main.css" rel="stylesheet">
    	<link href="css/bootstrap.min.css" rel="stylesheet">
    	<link href="https://fonts.googleapis.com/css?family=Oswald:200,300,400|Raleway:100,300,400,500|Roboto:100,400,500,700" rel="stylesheet">
    	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
    	<script src="js/jquery-3.2.1.min.js"></script>
    	<script src="js/main.js"></script>
    	<script src="js/bootstrap.min.js"></script>
    	
	</head>
	
	<!-- HEAD TAG ENDS -->
	
	<!-- BODY TAG STARTS -->
	
	<body>
		
		<?php 
		
			if(!isset($_SESSION["username"])) {
				include("common/headerLoggedOut.php");
			}
			else {
				include("common/headerLoggedIn.php");
			}
		
		?>
		
		<div class="spacer">a</div>
		
		<!-- Tour packages -->
		<div class="col-xs-12 popularDestinationsContainer">

			<div class="col-xs-12 destinationHolder">

				<div class="col-xs-12 destinationQuote">

					<h2 class="text-center" style="margin-bottom:25px;">Tour Packages</h2>
				</div>
				<div class="col-sm-12 searchHotels">
					<?php

					$servername = "localhost";
					$username = "root";
					$password = "";
					$dbname = "projectmeteor";

					// Creating a connection to MySQL database
					$conn = new mysqli($servername, $username, $password, $dbname);

					// Checking if we've successfully connected to the database
					if ($conn->connect_error) {
						die("Connection failed: " . $conn->connect_error);
					}

					$sql = "SELECT * FROM tour_packages";
					$rowcount = mysqli_num_rows(mysqli_query($conn, $sql));

					$result = $conn->query($sql);

					if ($result->num_rows > 0) {
						while ($row = $result->fetch_assoc()) {
							?>


							<div class="col-sm-4 text-center">

								<div class="col-sm-12 listItem">

									<!-- hotel INFO STARTS -->

									<div class="col-sm-12 text-center">

										<img src="images/packages/<?php echo $row["images"]; ?>" alt="Hotel Sea Crown"
											style="height: 13em;width: 19em;border-radius: 8px 8px 0 0;position: relative;margin-top: 1.75em;">

									</div>


									<div class="col-sm-12 hotelName dMarginPad">
										<?php echo $row["package_name"]; ?>
									</div>
									<h5 class="dMarginPad">
										Destination: <?php echo $row["destination"]; ?>
									</h5>


									<h5 class="dMarginPad">

										Duration: <?php echo $row["duration"]; ?> days
									</h5>
									<h5 class="dMarginPad">

										Type: <?php echo $row["type"]; ?>
									</h5>
									<!-- <h3 class="dMarginPad">

																					Availability: <?php echo $row["availability"]; ?>
																				</h3> -->
									<h4 class="dMarginPad">

										Price: ৳ <?php echo $row["price"]; ?>
									</h4>


									<div class="col-sm-12 view">

										<a href="packageDetails.php?packageId=<?php echo $row["package_id"] ?>"><input
												type="button" class="viewDetails" name="viewDetails" value="View Details"></a>

									</div>


								</div> <!-- listItem 1 -->

							</div>
						<?php }
					} ?>
				</div>

			</div>



		</div> <!-- home -->
	
	<div class="spacerLarge">.</div> <!-- just a dummy class for creating some space -->
			
		<?php include("common/footer.php"); ?>
				
	</body>
	
	<!-- BODY TAG ENDS -->
	
</html>