import java.io.*;

public class MainClass {
    public static void main(String[] args) throws IOException {
        File file = new File("c:\\Temp\\newfile.txt");

        //한글자씩 읽기
        FileReader fr = new FileReader(file);
        int ch = fr.read();
        while((ch = fr.read()) != -1) {
            System.out.println((char)ch);

        }
        fr.close();

        BufferedReader br = new BufferedReader(new FileReader(file));

        String str = "";
        while((str = br.readLine()) != null) {
            System.out.println(str);
        }
        br.close();

        //한문장으로 읽기
    }
}
