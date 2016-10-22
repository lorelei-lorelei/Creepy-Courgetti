<?php

include 'common.php';
include 'error.php';

display_page('registration');

if (!empty($_POST)) {
    create_user($gPDO, $_POST['fullname'], $_POST['username'], $_POST['email'], $_POST['password']);
}
