<?php

include 'common.php';
include 'error.php';

ensure_login();

function post_story($story)
{
    global $gPDO;
    $add_story = $gPDO->prepare('INSERT INTO articles(title, body, author, category, date)
   VALUES(:title, :body, :author, :category, unix_timestamp())');
    $add_story->execute($story);

    return $gPDO->lastInsertId();
}

switch ($_SERVER['REQUEST_METHOD']) {
  case 'GET':
    display_page('post');
    break;

  case 'POST':
    check_story();
      $show_story = post_story($_POST + ['author' => $_SESSION['blog-user']['id']]);

      header('Location: article.php?id='.$show_story);
    break;
}
