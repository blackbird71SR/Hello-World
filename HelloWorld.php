<?php // PHP code must be enclosed with <?php tags

echo('Hello World!');
// Prints Hello World! to stdout.
// Stdout is the web page if running in a browser.

print('Hello World!'); // The same as echo

// echo and print are language constructs too, so you can drop the parentheses
echo 'Hello World!';
print 'Hello World!';

$paragraph = 'paragraph';

echo 100;        // Echo scalar variables directly
echo $paragraph; // or variables

// If your php file only contains PHP code, it is best practice
// to omit the php closing tag to prevent accidental output.
