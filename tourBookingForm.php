<?php session_start();
if (!isset($_SESSION["username"])) {
    header("Location:blockedBooking.php");
    $_SESSION['url'] = $_SERVER['REQUEST_URI'];
}
$packageName = $_GET['packageName'];
$packageID = $_GET['packageID'];
?>

<!DOCTYPE html>

<html lang="en">

<!-- HEAD TAG STARTS -->

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Hotels | tourism_management</title>

    <link href="css/main.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-select.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Oswald:200,300,400|Raleway:100,300,400,500|Roboto:100,400,500,700"
        rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/moment-with-locales.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">

        $(function () {
            $('#datetimepicker5').datetimepicker({
                format: 'L',
                locale: 'en-gb',
                useCurrent: false,
                minDate: moment()
            });

            $('#datetimepicker6').datetimepicker({
                useCurrent: false,
                format: 'L',
                locale: 'en-gb'
            });

            $("#datetimepicker5").on("dp.change", function (e) {
                $('#datetimepicker6').data("DateTimePicker").minDate(e.date);
            });

            $("#datetimepicker2").on("dp.change", function (e) {
                $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
            });
        });

    </script>

</head>

<!-- HEAD TAG ENDS -->

<!-- BODY TAG STARTS -->

<body>

    <div class="container-fluid">

        <div class="hotels col-sm-12">

            <!-- HEADER SECTION STARTS -->

            <div class="col-sm-12">

                <div class="header">

                    <?php include("common/headerTransparentLoggedIn.php"); ?>

                    <div class="col-sm-12">

                        <div class="menu text-center">

                            <h3 class="dMarginPad" style="color:white">Booking Package <?php echo $packageName ?></h3>

                        </div>

                    </div>

                </div> <!-- header -->

            </div> <!-- col-sm-12 -->

            <!-- HEADER SECTION ENDS -->


            <div class="row">
                <div class="col-md-12">

                    <div class="content text-center packageForm">

                        <form action="tourBooking.php" method="POST">
                            <input type="hidden" value=<?php echo $packageID ?> name="package_id">
                            <div class="row">
                                <div class="col-sm-6" style="margin-top:11px">
                                    <label for="phone">Emergency Contact:</label>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="contact"
                                            placeholder="Enter your phone no. here" id="phone" required />
                                    </div>

                                </div>
                                <div class="col-sm-6">

                                    <label for="travelers">No. of travelers:<p> </p></label>
                                    <div class="form-group">
                                        <select id="travelers" class="selectpicker form-control" data-size="5"
                                            title="Select no. of travelers" name="travelers" required>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="grid-container" id="travelers_name">
                                
                            </div>

                    </div> <!-- content -->


                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">

                    <input type="submit" class="btn btn-primary btn-lg" value="Submit">

                </div>
            </div>
            </form>


            <!-- TRAIN SEARCH SECTION ENDS -->

        </div> <!-- trains -->



        <!-- POPULAR BUS SECTION STARTS -->

        <!-- <div class="col-sm-12"> -->

        <div class="popularHotels col-sm-12">

            <div class="heading">

                Popular Cities

            </div>

            <div class="bg">


                <div class="col-sm-4">

                    <div class="listItem">

                        <div class="imageContainer text-center">

                            <img src="images/hotels/hotel1.jpg" alt="New Delhi Hotels">

                        </div>

                        <div class="headings">

                            Dhaka

                        </div>

                        <div class="info">

                            3-star hotels averaging ৳2000

                        </div>

                        <div class="info">

                            5-star hotels averaging ৳6500

                        </div>


                    </div> <!-- listItem 1 -->

                </div> <!-- col-sm-4 -->

                <div class="col-sm-4">

                    <div class="listItem">

                        <div class="imageContainer text-center">

                            <img src="images/hotels/hotel2.jpg" alt="Mumbai Hotels">

                        </div>

                        <div class="headings">

                            Cox's Bazar

                        </div>

                        <div class="info">

                            3-star hotels averaging ৳3900

                        </div>

                        <div class="info">

                            5-star hotels averaging ৳9700

                        </div>


                    </div> <!-- listItem 2 -->

                </div> <!-- col-sm-4 -->

                <div class="col-sm-4">

                    <div class="listItem">

                        <div class="imageContainer text-center">

                            <img src="images/hotels/hotel3.jpg" alt="kolkata Hotels">

                        </div>

                        <div class="headings">

                            Bandarban

                        </div>

                        <div class="info">

                            3-star hotels averaging ৳3000

                        </div>

                        <div class="info">

                            5-star hotels averaging ৳7750

                        </div>


                    </div> <!-- listItem 3 -->

                </div> <!-- col-sm-4 -->


            </div> <!-- bg -->

        </div> <!-- popularBus -->

        <!-- </div> -->

        <!-- POPULAR BUS SECTION ENDS -->



        <!-- FOOTER SECTION STARTS -->

        <div class="footer col-sm-12">

            <div class="col-sm-4">

                <div class="footerHeading">
                    Contact Us
                </div>

                <div class="footerText">
                    Dhanmondi<br> Dhaka,Bangladesh
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



    </div> <!-- container-fluid -->
    <script>
        const select_travelars_count = document.getElementById("travelers");
        const travelers_name = document.getElementById("travelers_name");

        select_travelars_count.addEventListener("change", function () {
            travelers_name.innerHTML = ""
            const selectedOption = this.value;
            if (selectedOption) {
                for (i = 1; i <= selectedOption; i++) {
                    console.log(i);
                    travelers_name.innerHTML += `<div class='grid-item fade-in'>
                                    <label for="tname${i}">Traveler ${i} Name</label>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="tname${i}"
                                            placeholder="Enter travelar ${i} name here" id="tname${i}" required />
                            
                                    </div>
                                </div>`;
                }
            }

        });

    </script>
</body>

<!-- BODY TAG ENDS -->

</html>