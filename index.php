<?php
include 'common.php';
include 'functions.php';

$results = get_latest_articles($gPDO);
?>

<html>
<head><title>Creepy Courgetti - Home</title></head>
<body>
    <h1>Creepy Courgetti</h1>
    <p><a href="/admin.php">Submit new story!</a></p>
<?php foreach($results as $results): ?>
    <p><?= $result['story']; ?> , by  <?= $result['username']; ?></p>
<?php endforeach; ?>
</body>
</html>
