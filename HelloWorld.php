<?php
// In PHP, we use echo to print strings
echo "Hello, World!";

// print_r allows you to echo information about a variable in a way that's readable by humans
print_r("Hello, World!");

// var_dump displays structured information about expression(s) that includes its type and value
$stringVar = "Hello, World!";
var_dump($stringVar);

// Use sprintf to get a formatted string
$who = "World";
echo sprintf("Hello, %s!", $who);
