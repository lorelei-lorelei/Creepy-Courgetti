<!DOCTYPE html>
<html>
<head>
<title>Search Box</title>

</head>
<body>
	<!-- HTML for SEARCH BAR -->
<form action="search.php" method="POST">
<input type ="text" id="search" placeholder="Search..."><br />
<div id="Searchresults"></div>


<?php

mysql_connect("127.0.0.1", "root", "");
mysql_select_db("blog");

$search = trim($_POST['searchterm']);
$find_page = mysql_query("SELECT * FROM 'articles' WHERE 'body' LIKE '%$search%'");
while ($row = mysql_fetch_assoc($find_page)) {
echo "<a href='id'>$row</a><br />";
 }

 ?>
</body>
</html>
