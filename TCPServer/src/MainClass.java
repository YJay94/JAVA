import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;

public class MainClass {
    public static void main(String[] args) {
        /*
            TCP : Tramsmisson Control Protool
                    전송      제어      규약

            Server : TCP, Web(tomcat), Database

            종단시스템 : host
                        PC, Smart Phone, Scaneer, printer

            Router : hardware
                        host간의 상호 데이터를 교환 할 수 있도록 하는 장비

            Inter Newwork : 포괄적인 통신망

            통신규약
            TCP - Transmisson Control Protocol      동기 통신
            UDP - User Datagram Protocol            비동기 통신

            7 Layer
            1계층 - Physical Layer        물리 계층
            2계층 - Data Link Layer       주소를 헤더에 첨부
            3계층 - Network Layer         네트워크 IP -> Address
            4계층 - Transport Layer       네트워크 Port
            5계층 - Session Layer         세션을 동기화
            6계층 - Presentation Layer    보안, 압축, 확장
            7계층 - Application Layer     프로그램

            TCP
            신사적인 Protocol
            전화 -> 상대방 -> 연결 -> 통신start
            동기화 : send -> recv 처리순서가 맞아야 한다.
            데이터의 경계가 없다. 용량 제한이 없음.
            채팅. object 전송

            UDP
            비 연결형 프로토콜
            편지, 지상파 방송
            데이터의 경계가 있다.
            1 대 1 통신(unicast)
            1 대 다 (broadcast)
            다 대 다 (multicast)

           Packet(묶음)
           제어전보, 데이터(문자열, object) 결합된 형태로 전송
           IP, Port, String :

           IP : Internet Protocol => 주소

           IPv4 : xxx.xxx.xxx.xxx -> 0 ~ 255
           IPv6 : xxx.xxx.xxx.xxx.xxx.xxx -> 0 ~ 255

            127.0.0.1 -> 자기 자신의 접속하는 주소

            Port number
            IP주소는 internet에 존재하는 host(PC)를 식별할 수 있으나
            최종 주체인 프로세스(프로그램)를 식별하지 못하기 떄문에
            프로세스를 구별하기 위해서 지정된 수치(0 ~ 1024)외의 숫자를 지정한다.


            Socket
            통신의 주체, 통신을 하기 위한 오브젝트
            IP, TCP/UDP

            통신 순서
                server                  client
            1. Socket버전 확인          1. Socket 버전 확인
            2. Binding -> IP, Port
            3. Listener
            4. Accept                  2. Connect

             1) recv <---------- send(write)
             2) send ----------> recv(read)

            DNS(Domain Name System) Server


        Socket clientSocket = null;

        ServerSocket serSocket = new ServerSocket(9000);




         */


        try {
            ServerSocket serSocket = new ServerSocket(9000);

            System.out.println("접속 대기중...");
            clientSocket = serSocket.accept();

            // 접속 client 확인
            System.out.println("client IP:" + clientSocket.getInetAddress() + "Port:" + clientSocket.getProt());

            //수신(recv)
            BufferedReader reader = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
            String str = reader.readLine();

            //송신(send)
            PrintWriter writer = new PrintWriter(clientSocket.getOutputStream());
            writer.println(str);
            writer.flush();

        }
    }
}
