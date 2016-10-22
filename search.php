<?php

include 'common.php';

if(isset($_POST['search'])){
  $search = trim($_POST['search']);
  $find_page = $gPDO->prepare("SELECT * FROM articles WHERE body LIKE '%$search%'");
  $is_successful = $find_page->execute();

  display_page('search', ['results' => $find_page]);
 } else {
  display_page('search');
}
?>
