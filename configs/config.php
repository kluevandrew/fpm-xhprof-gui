<?php
/**
 * Default configuration for XHGui.
 *
 * To change these, create a called `config.php` file in the same directory,
 * and return an array from there with your overriding settings.
 */

return array(
    'profiler.enable' => function() {
        return !($_SERVER["NO_PROFILE"] ?? false);
    },
    'db.host' => getenv('XHGUI_MONGO_HOST') ?: 'mongodb://127.0.0.1:27017',
    'db.db' => getenv('XHGUI_MONGO_DATABASE') ?: 'xhprof',
    'db.options' => array(),
);
