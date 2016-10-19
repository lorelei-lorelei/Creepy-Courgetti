<?php

if(!isset($_SESSION)) {
  session_start();
}

$gPDO = new PDO('mysql://host=127.0.0.1;dbname=creepy_blog', 'root', '');
