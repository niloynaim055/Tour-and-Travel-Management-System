<?php session_start();
if (!isset($_SESSION["username"])) {
	header("Location:blocked.php");
	$_SESSION['url'] = $_SERVER['REQUEST_URI'];
}
?>

<!-- dumping the current page to buffer -->
<?php
ob_start();
?>

<!DOCTYPE html>

<html lang="en">

<!-- HEAD TAG STARTS -->

<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>Receipt | tourism_management</title>

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

	<div class="spacer">a</div>

	<?php

	date_default_timezone_set("Asia/Dhaka");
	$date = date('l jS \of F Y \a\t h:i:s A');

	$fare = $_POST["fareHidden"];
	$packageID = $_POST["package_id"];
	$travelers = $_POST["travelars"];
	$travelersJsonObj = $_POST["travelersJsonObj"];
	$contact = $_POST["contact"];
	$userID = $_SESSION['user_id']
	?>

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
	$userID = $_SESSION["user_id"];
	$dateFormatted = date("Y-m-d");
	$bookingDataInsertSQL = "INSERT INTO `tour_booking`(`package_id`, `user_id`, `customer_contact`, `booking_date`, `number_of_travelers`, `travelersJsonObj`) 
	VALUES ('$packageID','$userID','$contact','$dateFormatted','$travelers','$travelersJsonObj')";
	$bookingTour = $conn->query($bookingDataInsertSQL);
	$bookingIDSQL = "SELECT * FROM `tour_booking` ORDER BY `booking_id` DESC LIMIT 1";
	$bookingIDQuery = $conn->query($bookingIDSQL);
	$bookingIDGet = $bookingIDQuery->fetch_array(MYSQLI_NUM);
	$latestBookingID = $bookingIDGet[0];
	$currentBookingID = $latestBookingID;

	?>

	<div class="col-sm-12 generateReceipt">

		<div class="commonHeader">

			<div class="col-sm-1"></div>

			<div class="col-sm-7 text-left">

				<div class="headingOne">

					Booking Receipt

				</div>

				<div class="dateTime">

					<span class="generated">Generated: </span>
					<?php echo $date; ?>

				</div>

			</div>

			<div class="col-sm-3 text-right">


			</div>

			<div class="col-sm-1"></div>

			<div class="col-sm-12"></div>

			<div class="col-sm-1"></div>
			<div class="col-sm-10 bar"></div>
			<div class="col-sm-1"></div>

		</div> <!-- contains the header  -->

		<div class="col-sm-12"></div> <!-- empty class -->

		<div class="col-sm-1"></div>

		<div class="col-sm-10">

			<div class="subHeading">

				Booking Information:

			</div>

		</div>

		<div class="col-sm-12"></div> <!-- empty class -->

		<div class="col-sm-1"></div>

		<div class="col-sm-10 boxCenter"> <!-- outboundFlight Box -->

			<?php

			$sql = "SELECT * FROM tour_booking WHERE booking_id='$currentBookingID'";
			$result = $conn->query($sql);
			$row1 = $result->fetch_assoc();

			$sql2 = "SELECT * FROM tour_packages WHERE package_id='$packageID'";
			$result = $conn->query($sql2);
			$row2 = $result->fetch_assoc()

				?>

			<div class="col-sm-1 borderRight text-center">

				<div class="flightOperatorHeading">

					Booking ID

				</div>

				<div class="flightOperator">

					<?php 
					echo substr($currentBookingID, 0, 3) ?>

				</div>

			

			</div> <!-- col-sm-4 -->

			<div class="col-sm-3 borderRight text-center">

				<div class="flightOperatorHeading">

					Customer Name

				</div>

				<div class="flightOperator">

					<?php echo $_SESSION["Fname"]; ?>

				</div>
				

			</div> <!-- col-sm-4 -->
			<div class="col-sm-3 borderRight text-center">

				<div class="flightOperatorHeading">

					Package Name

				</div>

				<div class="flightOperator">

					<?php echo $row2["package_name"]; ?>

				</div>
				

			</div> <!-- col-sm-4 -->		
			<div class="col-sm-3 borderRight text-center">

				<div class="flightOperatorHeading">

					Booking Date

				</div>

				<div class="flightOperator">

					<?php echo $row1["booking_date"]; ?>

				</div>
				

			</div> <!-- col-sm-4 -->		

			

			<div class="col-sm-2 borderRight text-center">

				<div class="originHeading">

					No. of travelers

				</div>

				<div class="origin">

					<?php echo $row1["number_of_travelers"] ?>

				</div>
				

			</div> <!-- col-sm-4 -->

			

		</div> <!-- outboundFlight Box -->

		<div class="col-sm-12 spacer">a</div>

		<div class="col-sm-1"></div>

		<div class="col-sm-10">

			<div class="subHeading">

				Payment Information

			</div>

		</div>

		<div class="col-sm-12"></div> <!-- empty class -->

		<div class="col-sm-1"></div>

		<div class="col-sm-12"></div> <!-- empty class -->

		<div class="col-sm-1"></div>

		<div class="col-sm-10 boxCenter">

			<div class="columnHeaders">

				<div class="col-sm-4 borderBottom">

					<div class="serialNoHeader text-center">

						Charge per package

					</div>

				</div>

				<div class="col-sm-4 borderBottom">

					<div class="passengerNameHeader text-center">

						Amount paid

					</div>

				</div>

				<div class="col-sm-4 borderBottom">

					<div class="genderHeader text-center">

						Payment Mode

					</div>

				</div>

			</div> <!-- columnHeaders -->

			<div class="col-sm-4">

				<div class="serialNo text-center">

					<span class="rupee">৳</span>
					<?php echo $row2["price"]; ?>

				</div>

			</div>

			<div class="col-sm-4">

				<div class="serialNo text-center">

					<span class="rupee">৳</span><?php echo $fare ?>

				</div>

			</div>

			<div class="col-sm-4">

				<div class="serialNo text-center">

					Card Payment

				</div>

			</div>

		</div> <!-- boxCenter -->

		<div class="col-sm-1"></div>

		<div class="importantInfo">

			<div class="col-sm-12"></div> <!-- empty class -->

			<div class="col-sm-12 spacer">a</div>
			<div class="col-sm-12 spacer">a</div>

			<div class="col-sm-1"></div>

			<div class="col-sm-10">

				<div class="subHeading">

					Important Information

				</div>

			</div>

			<div class="col-sm-1"></div>

			<div class="col-sm-12"></div>

			<div class="col-sm-1"></div>
			<div class="col-sm-10 bar"></div>
			<div class="col-sm-1"></div>

			<div class="col-sm-12"></div>

			<div class="col-sm-1"></div>

			<div class="col-sm-10">

				<div class="info">

					<span class="strong">1.</span> A printed copy of this receipt must be presented at the time of
					check-in.

				</div>

				<div class="info">

					<span class="strong">2.</span> It is mandatory to have a Government recognised photo identification
					(ID) when checking-in. This can include: Driving License, Passport, PAN Card, Voter ID Card or any
					other ID issued by the Government of Bangladesh.

				</div>

			</div>

			<div class="col-sm-1"></div>

			<div class="col-sm-12 spacer">a</div>

			<div class="col-sm-12"></div> <!-- empty class -->

		</div> <!-- importantInfo -->



	</div> <!-- generateTicket -->

	<div class="spacer">a</div>

</body>

<!-- BODY TAG ENDS -->

</html>

<!-- after user login system is built push the username using the curent session to the database -->



<!-- saving the file as temp.html -->
<?php
file_put_contents('receipts\package\receipt' . $currentBookingID . '.html', ob_get_contents());
?>