<?php

include 'common.php';
include 'error.php';

display_page('registration');

if (!empty($_POST)) {
    create_user($gPDO, $_POST['username'], $_POST['fullname'], $_POST['email'], $_POST['password']);
}
