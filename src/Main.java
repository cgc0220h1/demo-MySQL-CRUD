import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File("test");
        InputStream inputStream = new FileInputStream(file);
        ObjectInputStream objectInputStream = new ObjectInputStream(inputStream);
    }
}
