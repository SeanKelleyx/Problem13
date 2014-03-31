import java.util.Arrays;

/**
 *
 * @author kelleys
 */
public class PE15 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("The answer is " + grid(20));
    }
    
    public static long grid(int input){
        long[] last = new long[input+1];
        Arrays.fill(last, 1);
        long[] current = new long[input+1];
        for (int i = 1; i <= input; i++) {
            current[0] = 1;
            for (int j = 1; j <= input; j++) {
                current[j] = last[j]+current[j-1];
            }
            last = current;
        }
        return current[input];
    }
    
}
