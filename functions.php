<?php

include 'common.php';

function get_latest_articles($pdo)
{
    $sql = 'SELECT * FROM articles, users
                WHERE articles.author_id = users.id
                ORDER BY articles.id DESC LIMIT 10';

    return $pdo->query($sql);
}

function insert_article($pdo, $body, $author_id)
{
    $preppyQ = $pdo->prepare('INSERT INTO articles(body, author_id) VALUES(?, ?)');
    $preppyQ->execute([$body, $author_id]);

    return $preppyQ;
}

if (!empty($_POST)) {
    $checkemail = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
    $checkusername = filter_var($_POST['username'], FILTER_SANITIZE_STRING);
    $checkfullname = filter_var($_POST['fullname'], FILTER_SANITIZE_STRING);
}

function get_user($pdo, $email)
{
    $prepQ = $pdo->prepare('SELECT * FROM users WHERE email=?');
    $is_successful = $prepQ->execute([$email]);

    return $prepQ->fetch(PDO::FETCH_ASSOC);
}

function create_user($pdo, $fullname, $username, $email, $password)
{
    $password = password_hash($password, PASSWORD_DEFAULT);
    $prepQ = $pdo->prepare('INSERT INTO users (fullname, username, email, password, role) VALUES(?, ?, ?, ?, 2)');
    $prepQ->execute([$fullname, $username, $email, $password]);

}

function login($pdo, $username, $email, $password)
{
    $user = get_user($pdo, $email);

    if (!empty($user) && password_verify($password, $user['password'])) {
        $_SESSION = $user;

        header('Location: admin.php');
    }
}

function perform_login($user)
{
    if (empty($user) || !password_verify($_POST['password'], $user['password'])) {
        throw new Exception('Sorry, your login credentials are not found.');
    }

    $_SESSION[USER_SESSION] = $user;
    header('Location: post.php');
    exit();
}
