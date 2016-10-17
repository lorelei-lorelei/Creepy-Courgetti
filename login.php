<?php
include 'common.php';
include 'functions.php';

if(!empty($_POST)) {
    login($gPDO, $_POST['email'], $_POST['password']);
  //  header('Location: /blog/admin.php'); <- doesn't exist yet so commented out
}
?>

<HTML>
  <meta charset='utf-8'>
  <head>
    <title>Creepy Courgetti - Login</title>
    <h1>Creepy Courgetti - Login</h1>
    <h3>Low in carbs; bloated with fear</h3>
  </head>
  <body>
    <form action="" method="post">
      <label for="email">Email:</label>
        <input name="email" type="text">
      <label for="password">Password:</label>
        <input name="password" type="password">
      <button type="submit">Login</button>
    </form>
