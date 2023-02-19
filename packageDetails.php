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

    <title>Hotel Details | tourism_management</title>

    <link href="css/main.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Oswald:200,300,400|Raleway:100,300,400,500|Roboto:100,400,500,700"
        rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/hotelDetails.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>

<!-- HEAD TAG ENDS -->

<!-- BODY TAG STARTS -->

<body>

    <?php include("common/headerLoggedIn.php"); ?>

    <?php

    $packageID = $_GET["packageId"];

    ?>

    <div class="spacer">a</div>
    <div class="spacer">a</div>

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

    $sql = "SELECT * FROM tour_packages WHERE package_id='$packageID'";
    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    date_default_timezone_set('Asia/Dhaka');
    $curr_date = date('y-m-d');
    $isAvailable = check_in_range($row["book_start"], $row["book_end"], $curr_date);

    if ($isAvailable && $row["status"] != 2) {
        $bookSql = "SELECT SUM(number_of_travelers) as sum_of_travelers FROM tour_booking WHERE package_id='$packageID' and status=1";
        $bookresult = $conn->query($bookSql);
        $bookingRow = $bookresult->fetch_assoc();
        $sum_of_travelers = $bookingRow["sum_of_travelers"];
        if ($sum_of_travelers >= $row["max_participants"]) {
            $sql = "UPDATE tour_packages SET status=2 WHERE package_id='$packageID'";
            $result = $conn->query($sql);
            $sql = "SELECT * FROM tour_packages WHERE package_id='$packageID'";
            $result = $conn->query($sql);
            $row = $result->fetch_assoc();
        }

    } else if($isAvailable == 0 && $row["status"] != 3) {
        $sql = "UPDATE tour_packages SET status=3 WHERE package_id='$packageID'";
        $result = $conn->query($sql);
        $sql = "SELECT * FROM tour_packages WHERE package_id='$packageID'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
    }

    ?>

    <div class="col-sm-1"></div> <!-- empty div -->

    <div class="col-sm-10 hotelDetails">

        <div class="col-sm-12 listItem">

            <div class="col-sm-8 leftBox">

                <div class="col-sm-12 imageContainer">

                    <img src="images/packages/<?php echo $row["images"]; ?>" alt="Image not found" />

                </div>

            </div>

            <div class="col-sm-4 rightBox borderLeft">

                <div class="hotelName col-sm-12 text-center noMargin">

                    <?php echo $row["package_name"]; ?>

                </div>

                <div class="location col-sm-12 text-center">

                    <span class="fa fa-map-marker"></span> <?php echo $row["destination"] ?>

                </div>





                <div class="col-sm-12 amenities text-center">

                    <ul>

                        <?php
                        if ($row["inclusions"]) {
                            $inclusions = explode(',', $row["inclusions"]);

                            foreach ($inclusions as $inc) {

                                ?>
                                <span class="badge"><?php echo $inc ?></span>

                            <?php }
                        } ?>



                    </ul>


                </div> <!-- amenities -->

                <div class="col-sm-12 checkInOut text-center">

                    <div class="col-sm-6 checkIn">

                        <div class="col-sm-12 time">

                            <?php echo $row["duration"]; ?> days

                        </div>

                        <div class="col-sm-12 timeTag">

                            Duration

                        </div>

                    </div>

                    <div class="col-sm-6 checkOut">

                        <div class="col-sm-12 time">

                            <?php echo $row["max_participants"]; ?>

                        </div>

                        <div class="col-sm-12 timeTag">

                            Max Participants

                        </div>

                    </div>

                </div>
                <?php if ($isAvailable) { ?>
                <div class="col-sm-12 checkInOut text-center">

                    <div class="col-sm-6 checkIn">

                        <div class="col-sm-12 time" style="font-size: 1.2em !important">

                            <?php echo $row["book_start"]; ?>

                        </div>

                        <div class="col-sm-12 timeTag">

                            Booking Start

                        </div>

                    </div>

                    <div class="col-sm-6 checkOut">

                        <div class="col-sm-12 time" style="font-size: 1.2em !important">

                            <?php echo $row["book_end"]; ?>

                        </div>

                        <div class="col-sm-12 timeTag">

                            Booking End

                        </div>

                    </div>

                </div>
                <?php }

                if ($row["status"] == 1) {
                    ?>
                <div class="col-sm-12 checkInOut text-center">

                    <div class="checkOut">

                        <div class="col-sm-12 time">

                            <?php
                            echo $row["max_participants"] - $sum_of_travelers;

                            ?>

                        </div>

                        <div class="col-sm-12 timeTag">

                            Seats Left

                        </div>

                    </div>

                </div>
                <?php }  ?>

                <div class="col-sm-12 text-center dMarginPad">
                    Package Type: <?php
                    echo $row["type"]
                        ?>
                </div>
                <div class="col-sm-12 text-center dMarginPad">
                    Status:
                    <?php
                    if ($row["status"] == 1) {
                        ?> <span class="label label-success">Available</span>
                    <?php } else if ($row["status"] == 2) {
                        ?>
                            <span class="label label-danger">No More Seats</span>
                        <?php
                    } else if ($row["status"] == 3) {
                        ?>
                                <span class="label label-danger">Not Available</span>
                        <?php
                    }
                    ?>
                    </span>
                </div>
                <div class="col-sm-12 priceContainer text-center">

                    ৳ <?php echo $row["price"]; ?>

                </div>



                <!-- creating a form -->
                <?php if ($row["status"] == 1) { ?>
                <div class="col-sm-12 view text-center">

                    <a
                        href="tourBookingForm.php?packageID=<?php echo $row["package_id"] ?>&packageName=<?php echo $row["package_name"] ?>"><input
                            type="button" class="btn btn-primary dMarginPad" value="Book Now"></a>

                </div>
                <?php }?>


            </div> <!-- right box -->

            <div class="col-sm-12 hotelDesc">

                <?php echo $row["description"]; ?>

            </div>
            <div class="col-sm-12 hotelDesc">
                <h3>Tour Plan</h3>

                <?php echo $row["tour_itinerary"]; ?>

            </div>

        </div>

    </div>

    <div class="col-sm-1"></div> <!-- empty div -->

    <div class="col-sm-12 spacer">.</div> <!-- just a dummy class for creating some space -->
    <div class="col-sm-12 spacer">.</div> <!-- just a dummy class for creating some space -->
    <div class="col-sm-12 spacer">.</div> <!-- just a dummy class for creating some space -->

    <?php include("common/footer.php"); ?>

</body>

<!-- BODY TAG ENDS -->

</html>