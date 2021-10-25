<?php

$modules_path = './includes';

$directoryIterator = new RecursiveDirectoryIterator($modules_path);
$iterator = new RecursiveIteratorIterator($directoryIterator, RecursiveIteratorIterator::SELF_FIRST);
$files = [];
foreach($iterator as $filePath => $fileInfo) {
	$parts = explode(".", $filePath);
	if (count($parts) <= 1) {
		continue;
	}

	if ($parts[count($parts) - 1] === 'php') {
		$files[] = $filePath;
	}
}

$start_time = microtime(true) * 1000;
foreach ($files as $file) {
	include $file;
}
$time = (microtime(true) * 1000) - $start_time;

var_dump("firstrun:" .$time);

$start_time = microtime(true) * 1000;
foreach ($files as $file) {
	include $file;
}
$time = (microtime(true) * 1000) - $start_time;

var_dump("secondrun: " . $time);
