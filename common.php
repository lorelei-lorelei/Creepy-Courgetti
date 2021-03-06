<?php

session_start();

//DATABASE

//global
$gPDO = new PDO('mysql://host=127.0.0.1;dbname=blog', 'root', '');
$gPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//ERROR HANDLER
set_exception_handler(function ($e) {
   display_page('error', ['message' => $e->getMessage()]);
});

//ARTICLES
const DEFAULT_ARTICLE_ID = 1; //show this article if none selected

const ARTICLE_CATEGORIES = [
  1 => 'fact or fiction',
  2 => 'short and sweet',
  3 => 'just creepy',
];

//TEMPLATES
const TEMPLATE_DIR = 'templates';
const TEMPLATE_EXT = '.phtml';

function display_page($page, array $vars = [])
{
    foreach (['_header', $page, '_footer'] as $template) {
        include TEMPLATE_DIR.DIRECTORY_SEPARATOR.$template.TEMPLATE_EXT;
    }
}

// USERS, LOGIN

const USER_ROLES = [
  1 => 'Admin', 2 => 'Author',
];

const USER_SESSION = 'blog-user';

function ensure_login()
{
    if (empty($_SESSION[USER_SESSION])) {
        header('Location: login.php');
        exit();
    }
}
