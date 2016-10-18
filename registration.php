<?php
include 'common.php';
include 'functions.php';

if(!empty($_POST)){
  create_user($_POST['email'], $_POST['password']);
}
?>

<HTML>
  <meta charset='utf-8'>
  <head>
    <title>Creepy Courgetti - User Registration</title>
    <h3>Low in carbs; bloated with fear</h3>
    <h1>Creepy Courgetti - User Registration</h1>
  </head>
  <body>
    <p>Welcome to Creepy Courgetti!</p>
    <p>Please complete the form below to register as a new author.</p>
    <form action="" method="post">
      <label for="username">Username:</label>
        <input name="username" type="text">
      <label for="email">Email:</label>
        <input name="email" type="text">
      <label for="password">Password:</label>
        <input name="password" type="password">
      <button type="submit">Register</button>
    </form>
</HTML>
