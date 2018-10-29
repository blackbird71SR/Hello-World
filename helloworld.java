public class helloworld {
	public static void main(String[] args) {
		char[] chr = {'h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd'};
		String res = "";
		for (int i=0; i<chr.length;i++) {
			res += chr[i];
		} System.out.println(res);
	}
}