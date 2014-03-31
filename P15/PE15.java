import java.util.Arrays;


public class PE15 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // call the  grid function with the size of grid
        System.out.println("The answer is " + grid(20));
    }
    //input is the size of grid
    public static long grid(int input){
	//initialize arrays and fill last with 1's
        long[] last = new long[input+1];
        Arrays.fill(last, 1);
        long[] current = new long[input+1];
	//for every square over
        for (int i = 1; i <= input; i++) {
            current[0] = 1;
	    //for every square down
            for (int j = 1; j <= input; j++) {
                current[j] = last[j]+current[j-1];
            }
            last = current;
        }
 	//return the final solution possible number of paths
        return current[input];
    }
    
}
