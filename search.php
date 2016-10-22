<?php

include 'common.php'; ?>

<html>
<head>
<title>Search Box</title>

</head>
<body>
	<!-- HTML for SEARCH BAR -->
<form action="" method="POST">
<input type ="text" name="search" placeholder="Search..." value=<?echo isset($_POST['search']) ? ($_POST['search']): ""?>>
<div id="Searchresults"></div>
</form>

<?php

if(isset($_POST['search'])){
  $search = trim($_POST['search']);
  $find_page = $gPDO->prepare("SELECT * FROM 'articles' WHERE 'body' LIKE '%$search%'");
  $is_successful = $find_page->execute();
  while ($row = $find_page->fetch(PDO::FETCH_ASSOC)) {
    echo "<a href='id'>$row</a><br />";
  }
  $count = $find_page->rowCount();
  echo "Search results found:" . $count . "<br />";
}
?>

</body>
</html>
