<?php session_start(); ?>

<!DOCTYPE html>

<html>

<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title>Home | tourism_management</title>

	<link href="css/bootstrap.min.css" rel="stylesheet" />
	<link href="css/hover-min.css" rel="stylesheet" />
	<link href="css/main.css" rel="stylesheet" />
	<link
		href="https://fonts.googleapis.com/css?family=Oswald:200,300,400|Raleway:100,300,400,500|Roboto:100,400,500,700"
		rel="stylesheet">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/main.js" type="text/javascript"></script>

	<style>
		#videowrapper {
			position: relative;
			overflow: hidden;
			border-radius: 5px;
		}

		#fullScreenDiv {
			min-height: 100%;
			height: 100vh;
			width: 100vw;
			padding: 0;
			margin: 0;
			background-color: gray;
			position: relative;
		}

		#video {
			width: 100vw;
			height: auto;
			margin: auto;
			display: block;
		}

		@media (min-aspect-ratio: 16/9) {
			#video {
				width: 100vw;
				height: auto;
			}
		}

		@media (max-aspect-ratio: 16/9) {
			#video {
				height: 100vh;
				width: auto;
				margin-left: 50vw;
				transform: translate(-50%);
			}
		}

		#videoMessage {
			width: 100%;
			height: 100%;
			position: absolute;
			top: 0;
			left: 0;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}

		.styling * {
			margin: 0.2em;
			text-align: center;
			color: #ffffff;
		}

		.styling h1 {
			font-size: 3em;
			text-shadow: 2px 2px 2px #000000;
		}

		.styling h2 {
			font-size: 1.5em;
		}

		.styling h3 {
			font-size: 1.2em;
		}

		.videoClick a {
			padding: 0.2em 0.5em;
			border-radius: 0.5em;
			color: white;
			background-color: rgba(241, 241, 241, 0.45);
			font-size: 1.7em;
			cursor: pointer;
			cursor: hand;
		}
	</style>
</head>

<body>

	<div class="col-xs-12 home">

		<!-- HEADER SECTION STARTS -->

		<div class="col-sm-12">

			<div class="header">

				<?php

				if (!isset($_SESSION["username"])) {
					include("common/headerTransparentLoggedOut.php");
				} else {
					include("common/headerTransparentLoggedIn.php");
				}

				?>

			</div> <!-- header -->

		</div> <!-- col-sm-12 -->

		<!-- HEADER SECTION ENDS -->
		<div class="col-xs-12 popularDestinationsContainer">

			<div id="videowrapper">
				<div id="fullScreenDiv">
					<video id="video" role="presentation" preload="auto" playsinline="" crossorigin="anonymous" loop=""
						muted="" autoplay="" class="blur">
						<source src="videos/video.mp4" type="video/mp4">
					</video>
					<div id="videoMessage" class="styling">
						<h1>Welcome to our Site</h1>
						<h2>Book your next tour with our affordatble price </h2>
						<p class="videoClick"><a href="signup.php">Sign Up Now</a></p>
					</div>
				</div>
			</div>




		</div>
		<!-- carousel -->


		<div class="col-xs-12 banner">

			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">

				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">

					<div class="item active">
						<img src="images/carousel/slider11.png" alt="Image1">
					</div>

					<div class="item">
						<img src="images/carousel/slider22.png" alt="Image2">
					</div>

					<div class="item">
						<img src="images/carousel/slider33.png" alt="Image3">
					</div>

				</div>

				<a href="#myCarousel" class="left carousel-control" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#myCarousel" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>

			</div>

		</div> <!-- banner -->




		<!---icons---->
		<div class="col-xs-12 popularDestinationsContainer">

			<div class="col-xs-12 destinationHolder">

				<div class="col-xs-12 destinationQuote">
					What would you like to book today?
				</div>

				<div class="col-xs-6 containerGrids hvr-buzz-out">

					<a href="packages.php" style="color: black;">

						<div class="col-xs-12 icons text-center">
							<img height="240" width="240" src="images/icons/tour.png" alt="hotels" class="iconsDim text-center" />
						</div>

						<div class="col-xs-12 heading">
							Tour Packages
						</div>

					</a>

				</div>

				<div class="col-xs-6 containerGrids hvr-buzz-out">

					<a href="hotels.php" style="color: black;">

						<div class="col-xs-12 icons text-center">
							<img src="images/icons/hotel.png" alt="hotels" class="iconsDim text-center" />
						</div>

						<div class="col-xs-12 heading">
							Hotels
						</div>

					</a>

				</div>


				<div class="col-xs-6 containerGrids hvr-buzz-out">
					<a href="flights.php" style="color: black;">

						<div class="col-xs-12 icons text-center">
							<img src="images/icons/flight.png" alt="flights" class="iconsDim text-center" />
						</div>

						<div class="col-xs-12 heading">
							Flights
						</div>

					</a>

				</div>
				<div class="col-xs-6 containerGrids hvr-buzz-out">
					<a href="trains.php" style="color: black;">

						<div class="col-xs-12 icons text-center">
						<p style="color:white">hi</p>
						</div>

						

					</a>

				</div>

				<div class="col-xs-6 containerGrids hvr-buzz-out">
					<a href="trains.php" style="color: black;">

						<div class="col-xs-12 icons text-center">
							<img src="images/icons/train.png" alt="trains" class="iconsDim text-center" />
						</div>

						<div class="col-xs-12 heading">
							Trains
						</div>

					</a>

				</div>
				<div class="col-xs-6 containerGrids hvr-buzz-out">
					<a href="trains.php" style="color: black;">

						<div class="col-xs-12 icons text-center">
							<p style="color:white">hi</p>
						</div>

						
					</a>

				</div>

			</div>




		</div>


		<!-- Tour packages -->
		<div class="col-xs-12 popularDestinationsContainer">

			<div class="col-xs-12 destinationHolder">

				<div class="col-xs-12 destinationQuote">

					<h2 class="text-center" style="margin-bottom:25px;">Popular Tour Packages</h2>
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

					$sql = "SELECT * FROM tour_packages where status=1 LIMIT 3";
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
									<h3 class="dMarginPad">
										Destination: <?php echo $row["destination"]; ?>
									</h3>


									<h3 class="dMarginPad">

										Duration: <?php echo $row["duration"]; ?> days
									</h3>
									<h3 class="dMarginPad">

										Type: <?php echo $row["type"]; ?>
									</h3>
									<!-- <h3 class="dMarginPad">

																					Availability: <?php echo $row["availability"]; ?>
																				</h3> -->
									<h3 class="dMarginPad">

										Price: ৳ <?php echo $row["price"]; ?>
									</h3>


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



		<!-- FOOTER SECTION STARTS -->

		<div class="footerMod col-sm-12">

			<div class="col-sm-4">

				<div class="footerHeading">
					Contact Us
				</div>

				<div class="footerText">
					Dhanmondi, Dhaka <br> Bangladesh
				</div>

				<div class="footerText">
					E-mail: queries@tourism_management.com
				</div>

			</div>

			<div class="col-sm-4">
			</div>

			<div class="col-sm-4">

				<div class="footerHeading">
					Social Links
				</div>

				<div class="socialLinks">

					<div class="fb">
						facebook.com/tourism_management
					</div>

					<div class="gp">
						plus.google.com/tourism_management
					</div>

					<div class="tw">
						twitter.com/tourism_management
					</div>

					<div class="in">
						linkedin.com/tourism_management
					</div>

				</div> <!-- social links -->

			</div>

			<div class="col-sm-12">
				<div class="copyrightContainer">
					<div class="copyright">
						Copyright &copy; 2023
					</div>
				</div>
			</div>

		</div> <!-- footer -->

		<!-- FOOTER SECTION ENDS -->

</body>

</html>