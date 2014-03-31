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
        BigInteger total = new BigInteger("0");
        FileInputStream fstream = new FileInputStream("numbers.txt");
        BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
        String line;
        while ((line = br.readLine()) != null) {
            String s2 = line.replaceAll("[\n\r]", "");
            BigInteger plus = new BigInteger(s2);
            total = total.add(plus);
        }
        System.out.println(total);
    }
    
}

