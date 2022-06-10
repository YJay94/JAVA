import java.io.*;
import java.util.List;

public class FileAction {
        public void write(String input){
            try
            {
                String filePath = "C:\\Users\\user\\IdeaProjects\\test0610\\database.txt";
                FileWriter fw = new FileWriter(filePath, true);
                BufferedWriter bw = new BufferedWriter(fw);
                String lineToAppend = "\r\n"+input;
                bw.write(lineToAppend);
                bw.close();
            }
            catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

    public void read(){
            File readerWriterFile = new File("C:\\Users\\user\\IdeaProjects\\test0610\\database.txt");
            try(Reader reader = new FileReader(readerWriterFile);
                BufferedReader br = new BufferedReader(reader);) {
                String data;
                while((data=br.readLine()) != null) {
                    System.out.println(data);
                }

            } catch (FileNotFoundException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
    }
}
