% hello world program
-module(helloworld). 
-export([start/0]). 

start() -> 
   io:fwrite("Hello, world!\n").