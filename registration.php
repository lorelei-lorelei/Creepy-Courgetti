<?php
include 'functions.php';
include 'error.php';

if (!empty($_POST)) {
    create_user($gPDO, $_POST['fullname'], $_POST['username'], $_POST['email'], $_POST['password']);

    display_page('registration_confirm');
} else {
  display_page('registration');
}
