object HelloWorld extends App {
   for {
     var <- Some("Hello world")
   } yield println(var)
 }
