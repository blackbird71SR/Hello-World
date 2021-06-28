using System;

namespace helloWorld
{
    class HelloWorld
    {
        static void Main(string[] args)
        {
            if(args.Length > 0) {
                if(args[0].Equals("TH")) {
                    SayHelloInThai();
                }
            }
            else {
                Console.WriteLine("Hello World!");
            }
            
        }

        static void SayHelloInThai() {
            Console.WriteLine("Swasdee !!!");
        }
    }
}