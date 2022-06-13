public class ReadTread extends Tread{

    Socket socket;

    public ReadTread() {
        super.run();

        new ReadTread(socket).start();

        while(true) {
            BufferedReader reader = new BUfferedReader(new InputStreamReader(socket.getIn)) {
            String str = reader.readLine();
            System.out.println("server로부터 받은 메시지:" + str);
            }
        }
    }

    public void run() {

    }

    catch(Exception e) {
        System.out.pritnln("연결이 끊긴 IP:" + socket.getInetAddress())'
        list.remove(socket);

        for(Socket s : list) {
            System.out.println("접속되어 있는 IP:" + s.getInetAddress());
        }
    }
}
