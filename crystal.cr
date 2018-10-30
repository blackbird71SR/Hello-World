# Cystal Programing Language

This is the simplest way to write the Hello World program in Crystal:

## puts "Hello World"
</div>

But if you feel like it, you can also use some object oriented programming:

class Greeter
  def initialize(@name : String )
  end

  def salute
    puts "Hello #{@name}!"
  end
end

g = Greeter.new("world")
g.salute
Or maybe with blocks:

"Hello world".each_char do |char|
  print char
end
print '\n'

First create a file hello.cr containing your preferred choice of the previous examples. Then type in the console:

$ bin/crystal hello.cr
$ ./hello
Hello World
$
The compiled output is a standalone executable without any specific runtime dependency
