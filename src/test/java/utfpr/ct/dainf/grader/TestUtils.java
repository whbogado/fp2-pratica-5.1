package utfpr.ct.dainf.grader;

/**
 *
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class TestUtils {

    public static int random(int min, int max) {
        return min + (int)Math.round((max-min) * Math.random());
    }
    
    public static double random(double min, double max) {
        return min + (max-min) * Math.random();
    }
    
}
