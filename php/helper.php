<?php
function getLocalTime($time)
{
    $datetime = new DateTime($time, new DateTimeZone('UTC'));
    $datetime->setTimezone(new DateTimeZone('Asia/Dhaka'));
    return $datetime->format('Y-m-d h:i:s a'); //Output: 2021-12-25 12:00:00 pm

}

function check_in_range($start_date, $end_date, $date_from_user)
{
  // Convert to timestamp
  $start_ts = strtotime($start_date);
  $end_ts = strtotime($end_date);
  $user_ts = strtotime($date_from_user);

  // Check that user date is between start & end
  return (($user_ts >= $start_ts) && ($user_ts <= $end_ts));
}