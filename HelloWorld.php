<?php
  // In PHP, we use echo to print text
  echo "Hello World";
  // If you want to print in browser's console, we use print_r
  print_r("Hello World");
  // if you want the variable data types as well use var_dump
  $stringVar = 'hello world';
  var_dump($stringVar);
  
  // if you want export varibale data into php-file use var_export
  var_export($stringVar);
  $myArray = array(
    'Doe' => array(
       10 => 'Joe', 
       100 =>'Jahne'
     )
  );
  var_export($myArray);
