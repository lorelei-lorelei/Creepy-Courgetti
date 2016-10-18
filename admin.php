<?php
include 'common.php';

if(empty($_SESSION)) {
    header('Location: /blog/login.php');
    die();
}

if(!empty($_POST)) {
    insert_article($_POST['body'], $_SESSION['id']);
    header('Location: /blog/index.php');
}

?>
<html>
<head><title>Author Admin</title></head>
<body>
    <h1>Story Admin</h1>
    <h3>Add a new story to Creepy Courgetti!</h3>
    <form action="" method="POST">
      <label for="title">Title:</label>
        <input name="title" type="text">
      <label for="story">Story:</label>
        <textarea name="story" rows="20" cols="20"></textarea>
        <button type="submit">Publish!</button>
    </form>

</body>
</html>
