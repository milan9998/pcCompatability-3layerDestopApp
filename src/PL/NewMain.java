package PL;
import DAL.*;

/**
 *
 * @author Milan
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
          ComponentsRepository connection = new ComponentsRepository();
        var frame = new NewJFrame();
        frame.show();
    }
}
