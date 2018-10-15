public aspect HelloWorld 
{
  pointcut mainCall() : call(public static void *.main(String[] args));
  before() : mainCall() 
  {
    System.out.println( "Hello World!" );
  }
}
