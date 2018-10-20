import java.util.Scanner;

class HelloWorldPOO {

    public static class Message {
        private String message = "Hello World";

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }
    }

    public static void main(String[] args) {
        Message message = new Message();

        System.out.println(message.getMessage());

        System.out.println("\n\n"); // include blank space
        System.out.println("Alterando mensagem de boas vindas\nPressione qualquer tecla!");

        Scanner scanner = new Scanner(System.in);

        scanner.hasNext();

        message.setMessage("Hello Hacktoberfest World");

        System.out.println(message.getMessage());
    }
}
