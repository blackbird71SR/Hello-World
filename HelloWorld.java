import java.util.*;
class HelloWorld
{
  public static void main(String[] args)
  {
    System.out.println("Hello World!!\n");
    System.out.println("Welcome Here! Enter two numbers.\n");
    Scanner sc=new Scanner(System.in);
    String s=sc.nextLine();
    System.out.println("Thanks for your input. \nYour input-"+s);
  }
}
