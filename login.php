<?php
include 'common.php';
include 'functions.php';

if(!empty($_POST)) {
    login($gPDO, $_POST['username'], $_POST['password']);
  header('Location: /index.php');
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
      <label for="username">Username:</label>
        <input name="username" type="text">
      <label for="password">Password:</label>
        <input name="password" type="password">
      <button type="submit">Login</button>
    </form>
