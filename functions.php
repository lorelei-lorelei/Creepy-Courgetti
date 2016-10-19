<?php

include 'common.php';

$password = $_POST['password'];

if(!empty($_POST)){
  $checkemail = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
}

function create_user($pdo, $fullname, $username, $email, $password) {
    $password = password_hash($password, PASSWORD_DEFAULT);
    $prepQ = $pdo->prepare('INSERT INTO users (fullname, username, email, password) VALUES(?, ?, ?, ?)');
    return $prepQ->execute([$fullname, $username, $email, $password]);
}

function get_user($pdo, $email) {
    $prepQ = $pdo->prepare('SELECT * FROM users WHERE email=?');
    $is_successful = $prepQ->execute([$email]);

    return $prepQ->fetch(PDO::FETCH_ASSOC);
}

function login($pdo, $username, $email, $password) {
    $user = get_user($pdo, $email);

    if(!empty($user) && password_verify($password, $user['password'])) {
        $_SESSION = $user;
    }
}
