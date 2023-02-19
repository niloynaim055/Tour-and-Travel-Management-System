<?php session_start();
if (!isset($_SESSION["username"])) {
	header("Location:blocked.php");
	$_SESSION['url'] = $_SERVER['REQUEST_URI'];
}
?>

<!DOCTYPE html>

<html lang="en">

<!-- HEAD TAG STARTS -->

<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>Dashboard | tourism_management</title>

	<link href="css/main.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-select.css" rel="stylesheet">
	<link href="css/bootstrap-datetimepicker.css" rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css?family=Oswald:200,300,400|Raleway:100,300,400,500|Roboto:100,400,500,700"
		rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/userDashboard.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="js/bootstrap-dropdown.js"></script>
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/moment-with-locales.js"></script>
	<script src="js/bootstrap-datetimepicker.js"></script>

</head>

<!-- HEAD TAG ENDS -->

<!-- BODY TAG STARTS -->

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

<body>

	<div class="container-fluid">

		<div class="col-sm-12 userDashboard text-center">

			<?php include("common/headerDashboardTransparentLoggedIn.php"); ?>

			<div class="col-sm-12">

				<div class="heading">
					My Dashboard
				</div>

			</div>

			<div class="col-sm-1"></div>

			<div class="col-sm-3 containerBoxLeft">

				<a href="userDashboardProfile.php">
					<div class="col-sm-12 menuContainer bottomBorder">
						<span class="fa fa-user-o"></span> My Profile
					</div>
				</a>

				<div class="col-sm-12 menuContainer bottomBorder active">
					<span class="fa fa-copy"></span> My Bookings
				</div>

				<a href="userDashboardETickets.php">
					<div class="col-sm-12 menuContainer bottomBorder">
						<span class="fa fa-clone"></span> My E-Tickets
					</div>
				</a>

				<a href="userDashboardCancelTicket.php">
					<div class="col-sm-12 menuContainer bottomBorder">
						<span class="fa fa-close"></span> Cancel Ticket
					</div>
				</a>

				<a href="userDashboardAccountSettings.php">
					<div class="col-sm-12 menuContainer noBottomBorder">
						<span class="fa fa-bar-chart"></span> Account Stats
					</div>
				</a>

			</div>

			<div class="col-sm-7 containerBoxRightHotel text-left">

				<div class="col-sm-12 tickets">

					<?php

					$user = $_SESSION["username"];
					$userID = $_SESSION["user_id"];
					//hotel query
					$hotelBookingsSQL = "SELECT COUNT(*) FROM `hotelbookings` WHERE Username='$user' AND cancelled='no'";
					$hotelBookingsQuery = $conn->query($hotelBookingsSQL);
					$noOfHotelBookings = $hotelBookingsQuery->fetch_array(MYSQLI_NUM);
					//package query
					$tourBookingsSQL = "SELECT COUNT(*) FROM `tour_booking` WHERE user_id='$userID' AND status=1";
					$tourBookingsQuery = $conn->query($tourBookingsSQL);
					$noOftourBookings = $tourBookingsQuery->fetch_array(MYSQLI_NUM);

					?>
					<div class="col-sm-6 ticketsWrapper topMargin">

						<div class="tag">Select the type of booking: </div>

					</div>

					<div class="col-sm-6 topMargin pullLeft">

						<select class="input" name="ticketTypeSelector" id="ticketTypeSelector" />

						<option value="flightTickets">Hotel (<?php echo $noOfHotelBookings[0]; ?>)</option>
						<option value="trainTickets">Packages (<?php echo $noOftourBookings[0]; ?>)</option>
						<!-- change echo -->


						</select>

					</div>

					<?php if ($noOfHotelBookings[0] > 0): ?>


						<div class="col-sm-12 ticketTableContainer pullABitLeft" id="hotelBookingsWrapper">

							<table class="table table-responsive">
								<thead>
									<tr>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Id</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Hotel</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Hotel</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Date</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Receipt</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Cancel</th>
									</tr>
								</thead>

								<?php
								//checking hotel booking query
								$hotelBooksSQL = "SELECT * FROM `hotelbookings` WHERE username='$user' AND cancelled='no'";
								$hotelBooksQuery = $conn->query($hotelBooksSQL);

								while ($hotelBooksRow = $hotelBooksQuery->fetch_assoc()) {

									?>

									<tr>
										<td class="tableElementTagsNoHover text-center"><?php echo $hotelBooksRow["bookingID"]; ?></td>
										<td class="tableElementTagsNoHover text-center">
											<?php echo $hotelBooksRow["hotelName"]; ?>
										</td>
										<td class="tableElementTagsNoHover text-center"><?php echo $hotelBooksRow["date"]; ?>
										</td>
										<td class="text-center"><a
												href="receipts/receipt<?php echo $hotelBooksRow["bookingID"]; ?>.html"
												target="_blank"><span
													class="fa fa-download tableElementTags pullSpan"></span></a></td>
										<td class="tableElementTags text-center">
											<button
												onclick="cancelBooking(<?php echo $hotelBooksRow['bookingID'] ?>, 'hotel')"
												class="btn btn-primary pullTop cancelBooking"><span
													class="fa fa-remove tableElementTags "></span></button>
										</td>

									</tr>

								<?php } ?>

							</table>

						</div>

					<?php else: ?>

						<div class="col-sm-12 ticketTableContainer" id="flightTicketsWrapper">

							<div class="noBooking">

								Looks like you haven't booked any Hotel with us yet.

							</div>

						</div>

					<?php endif; ?>


					<!-- ..................................Tour Packages........................ -->

					<?php if ($noOftourBookings[0] > 0): ?>


						<div class="col-sm-12 ticketTableContainer pullABitLeft" id="hotelBookingsWrapper">

							<table class="table table-responsive">
								<thead>
									<tr>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Id</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Package</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Date</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Receipt</th>
										<th class="tableHeaderTags text-center" style="vertical-align: middle;">Cancel</th>
									</tr>
								</thead>

								<?php
								//checking hotel booking query
								$tourBooksSQL = "SELECT * FROM `tour_booking` WHERE user_id='$userID' AND status=1";
								$tourBooksQuery = $conn->query($tourBooksSQL);

								while ($tourBooksRow = $tourBooksQuery->fetch_assoc()) {

									?>

									<tr>
										<td class="tableElementTagsNoHover text-center"><?php echo $tourBooksRow["booking_id"]; ?></td>
										<td class="tableElementTagsNoHover text-center">
											<?php echo $tourBooksRow["package_id"]; ?>
										</td>
										<td class="tableElementTagsNoHover text-center"><?php echo $tourBooksRow["booking_date"]; ?>
										</td>
										<td class="text-center"><a
												href="receipts/package/receipt<?php echo $tourBooksRow["booking_id"]; ?>.html"
												target="_blank"><span
													class="fa fa-download tableElementTags pullSpan"></span></a></td>
										<td class="tableElementTags text-center">
											<button
												onclick="cancelBooking(<?php echo $tourBooksRow['booking_id'] ?>, 'package')"
												class="btn btn-primary pullTop cancelBooking"><span
													class="fa fa-remove tableElementTags "></span></button>
										</td>

									</tr>

								<?php } ?>

							</table>

						</div>

					<?php else: ?>

						<div class="col-sm-12 ticketTableContainer" id="flightTicketsWrapper">

							<div class="noBooking">

								Looks like you haven't booked any packages with us yet.

							</div>

						</div>

					<?php endif; ?>



				</div>

				<div class="col-sm-1"></div>

			</div>

			<div class="col-sm-12 spacer">a</div>
			<div class="col-sm-12 spacer">a</div>

		</div>

	</div> <!-- container-fluid -->

	<?php include("common/footer.php"); ?>
	<script>

		function cancelBooking(id, type) {
			var url = 'cancelBooking.php';
			var data = { bookingID: id, bType: type };
			$.ajax({
				url: url,
				type: "POST",
				data: data,
				dataType: "json",
				success: function (data) {
					console.log(data);
				},
				error: function (error) {
					console.log(`Error ${error}`);
				}
			});
		}

		// function cancelBooking(id, type) {
		// 	// Creating Our XMLHttpRequest object
		// 	var xhr = new XMLHttpRequest();

		// 	// Making our connection
		// 	var url = 'cancelBooking.php';
		// 	xhr.open("POST", url, true);

		// 	// function execute after request is successful
		// 	xhr.onreadystatechange = function () {
		// 		if (this.readyState == 4 && this.status == 200) {
		// 			console.log(this.responseText);
		// 		}
		// 	}
		// 	// Sending our request
		// 	xhr.send(`bookingID=${id}&type=${type}`);
		// }
	</script>
</body>



<!-- BODY TAG ENDS -->

</html>