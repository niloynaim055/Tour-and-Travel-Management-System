<?php session_start();
if (!isset($_SESSION["username"])) {
	header("Location:blocked.php");
	$_SESSION['url'] = $_SERVER['REQUEST_URI'];
}
require "php/helper.php"
?>

<!DOCTYPE html>

<html lang="en">

<!-- HEAD TAG STARTS -->

<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>Booking | tourism_management</title>

	<link href="css/main.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Oswald:200,300,400|Raleway:100,300,400,500|Roboto:100,400,500,700"
		rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/bootstrap.min.js"></script>

</head>

<!-- HEAD TAG ENDS -->

<!-- BODY TAG STARTS -->

<body>

	<?php include("common/headerLoggedIn.php"); ?>

	<?php

	$packageID = $_POST["package_id"];
	$travelers = $_POST["travelers"];
	$travelersArry = array();
	for ($i = 1; $i <= $travelers; $i++) {
		$travelersArry += ["tname".strval($i) => $_POST["tname" . strval($i)]];

	}
	$travelersJsonObj =json_encode($travelersArry);
	$contact = $_POST["contact"];
	?>

	<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "projectmeteor";

	// Creating a connection to MySQL database
	$conn = new mysqli($servername, $username, $password, $dbname);

	// Checking if successfully connected to the database
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	?>

	<div class="spacer">a</div>

	<div class="bookingWrapper">

		<div class="headingOne">

			Please review and confirm your booking

		</div>


		<!----------------------------- package --------------------------------->



		<div class="col-sm-12 bookingHotel">

			<?php


			$pkSQL = "SELECT * FROM `tour_packages` WHERE package_id='$packageID'";
			$pkQuery = $conn->query($pkSQL);
			$row = $pkQuery->fetch_assoc();

			?>

			<div class="col-sm-7"> <!-- hotel summary container -->

				<div class="col-sm-12">

					<div class="boxLeftHotel" style="min-height:26em">

						<div class="col-sm-12 hotelMode">Booking Summary</div>

						<div class="col-sm-12 hotelName">

							Name of the package: <span class="nameText">
								<?php echo $row["package_name"]  ?>
							</span>

						</div>
						<div class="col-sm-12 hotelName">

							Depart From: <span class="nameText">
								<?php echo $row["departure"]  ?>
							</span>

						</div>
						<div class="col-sm-12 hotelName">

							Destination: <span class="nameText">
								<?php echo $row["destination"]  ?>
							</span>

						</div>

						<div class="col-sm-3 borderRight">
							<div class="checkIn">
								<?php echo getLocalTime($row["tour_start"]); ?>
							</div>
							<div class="checkInSubscript">Check In Date & Time</div>
						</div>

						<div class="col-sm-3 borderRight">
							<div class="checkOut">
								<?php echo $row["duration"]; ?> days
							</div>
							<div class="checkOutSubscript">Duration</div>
						</div>


						<div class="col-sm-3 borderRight">
							<div class="noOfRooms">
								<?php echo $travelers; ?>
							</div>
							<div class="noOfRoomsSubscript">No. of travelers</div>
						</div>

						<div class="col-sm-3">
							<div class="noOfGuests">
								<?php echo $row["type"]; ?>
							</div>
							<div class="noOfGuestsSubscript">Type</div>
						</div>

					</div> <!-- boxLeft -->

				</div> <!-- col-sm-7 bookings -->

			</div>

			<div class="col-sm-5"> <!-- fare container -->

				<div class="col-sm-12">

					<div class="boxRightHotel">

						<div class="col-sm-12 fareSummary">Payment Summary</div>

						<div class="col-sm-8">


							<div class="heading"><?php echo $travelers; ?> Traveler x <?php echo $row["price"]; ?>৳</div>
							<div class="heading">Convenience Fee</div>
						</div>


						<div class="col-sm-4">
							<div class="price"><span class="sansSerif">৳ </span>
								<?php echo $travelers * $row["price"]; ?>
							</div>
							<div class="price"><span class="sansSerif">৳ </span>250</div>
						</div>

						<div class="col-sm-12">

							<div class="calcBar"></div>

						</div>

						<div class="col-sm-8">
							<div class="headingTotal">Total Payment</div>
						</div>

						<div class="col-sm-4">
							<div class="priceTotal"><span class="sansSerif">৳ </span>
								<?php echo ($travelers * $row["price"]) + 250; ?>
							</div>
						</div>

						<form action="payment.php" method="POST">

							<div class="bookingButton text-center">
								<input type="submit" class="confirmButton" value="Confirm Booking">
							</div>

							<?php $totalFare = ($travelers * $row["price"]) + 250; ?>

							<input type="hidden" name="fareHidden" value="<?php echo $totalFare; ?>">
							<input type="hidden" name="packageIDHidden" value="<?php echo $packageID; ?>">
							<input type="hidden" name="travelersHidden" value="<?php echo $travelers; ?>">
							<input type="hidden" name="travelersJsonObjHidden" value='<?php echo $travelersJsonObj; ?>'>
							<input type="hidden" name="contactHidden" value="<?php echo $contact; ?>">
							<input type="hidden" name="modeHidden" value="<?php echo "package" ?>">

						</form>

					</div>

				</div> <!-- col-sm-5 Fare -->

			</div> <!-- fare container -->

		</div> <!-- hotel -->


	</div> <!--bookingWrapper -->

	<div class="spacerLarge">.</div> <!-- just a dummy class for creating some space -->

	<?php include("common/footer.php"); ?>

</body>

<!-- BODY TAG ENDS -->

</html>