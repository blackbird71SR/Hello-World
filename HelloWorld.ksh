#!/bin/ksh
# Purpose: KornShell (ksh) script "Hello World" implementation using parameter substitution to provide a default message.
# Usage: ./HelloWorld.ksh

# Set the message, using parameter substitution to set a default
MSG=${1:-'Hello World'}

# Output the message
echo "$MSG"
