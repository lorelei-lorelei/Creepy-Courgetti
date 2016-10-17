<?php

include 'common.php';

if(!empty($_POST)){
  $checkemail = filter_var($_POST['email'], FILTER_SANITIZE_STRING);

function create_user($pdo, $email, $password) {
    $secure_password = password_hash($password, PASSWORD_DEFAULT);
    $prepQ = $pdo->prepare('INSERT INTO users (email, password) VALUES(?, ?)');
    return $prepQ->execute([$email, $password]);
}

function get_user($pdo, $email) {
    $prepQ = $pdo->prepare('SELECT * FROM users WHERE email=?');
    $is_successful = $prepQ->execute([$email]);

    return $prepQ->fetch(PDO::FETCH_ASSOC);
}

function login($pdo, $email, $password) {
    $user = get_user($pdo, $email);

    if(!empty($user) && password_verify($password, $user['password'])) {
        $_SESSION = $user;
    }
}
