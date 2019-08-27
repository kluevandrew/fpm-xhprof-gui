<?php


function slow_function() {
    sleep(2);
}

function fast_function() {
    usleep(1000);
}

slow_function();

for ($i = 0; $i < 1000; $i++) {
    fast_function();
}

?>
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
    <h1>Hello world!</h1>
</body>
</html>
