<?php
include_once("z_db.php");
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$update = "UPDATE affiliateuser SET userstatus=0, session=0 WHERE userstatus =1";

 $upt=mysqli_query($con,$update);   