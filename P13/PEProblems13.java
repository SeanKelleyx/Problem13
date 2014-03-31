import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.*;

/**
 *
 * @author kelleys
 */
public class PEProblems13 {
    
    /**
     * @param args the command line arguments
     * @throws java.io.IOException
     */
    public static void main(String[] args) throws IOException {
	// open and read file line by line
        BigInteger total = new BigInteger("0");
        FileInputStream fstream = new FileInputStream("numbers.txt");
        BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
        String line;
        while ((line = br.readLine()) != null) {
	    //remove line return chars
            String s2 = line.replaceAll("[\n\r]", "");
	   // make lin e a big integer
            BigInteger plus = new BigInteger(s2);
	    //add to tota;
            total = total.add(plus);
        }
        //print total of ints
        System.out.println(total);
    }
    
}

