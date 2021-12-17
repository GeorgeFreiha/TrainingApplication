<?php 
 mysql_connect("localhost","root",""); 
 mysql_select_db("nof1trainingdb"); 
 $query = "SELECT data,filetype FROM uploads where id=$id"; 
 $result = MYSQL_QUERY($query); 
 $data = MYSQL_RESULT($result,0,"data"); 
 $type = MYSQL_RESULT($result,0,"filetype"); 
 Header( "Content-type: $type"); 
 print $data; 
 ?> 