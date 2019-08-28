<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
Пурувет!
<?= date(DATE_ISO8601) ?>
<hr>
<?php
$dbname = getenv('MYSQL_DATABASE');
$dbpass = getenv('MYSQL_ROOT_PASSWORD');
$dbh = new PDO("mysql:host=mysql;dbname=$dbname", "root", $dbpass);
foreach($dbh->query('SELECT @@version') as $row) { ?>
<pre><?php print_r($row) ?></pre>
<?php } ?>
</body>
</html>

