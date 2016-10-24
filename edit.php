<?php

include 'common.php';
include 'error.php';

ensure_login();

function update_story($story)
{
    global $gPDO;
    $add_story = $gPDO->prepare('UPDATE articles SET title = :title, body = :body WHERE id = :id');
    $add_story->execute($story);

    return $gPDO->lastInsertId();
}

$query = $gPDO->prepare('SELECT * FROM articles WHERE id = :id');
$query->execute($_GET);

switch ($_SERVER['REQUEST_METHOD']) {
  case 'GET':
    display_page('edit', [
      'article' => $query->fetch()
    ]);
    break;

  case 'POST':
      $show_story = update_story($_POST + [
          'author' => $_SESSION['blog-user']['id'],
          'id'     => $_GET['id']
        ]
      );

      header('Location: article.php?id='.$_GET['id']);
    break;
}
