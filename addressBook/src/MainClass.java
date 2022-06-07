import java.util.Arrays;
import java.util.Scanner;

public class MainClass {
    public static void main(String[] args) {
        /*
        *   주소록
        *
        *   column: 이름, 나이, 전화번호, 주소, 메모
        *
        *   2차원 배열 : row = 100
        *
        *   Menu
        * 1. 추가
        * 2. 삭제
        * 3. 검색 이름, (전화번호)
        * 4. 수정
        * 5. 모든데이터 출력
        * 6. 데이터 저장
        * 7. 종료
        * */

        String[][] data = new String[100][5];

        while(true) {
            menu(data);
        }
    }

    static void menu(String[][] data){
        Scanner sc = new Scanner(System.in);
        System.out.println("Menu");
        System.out.println("1. 추가");
        System.out.println("2. 삭제");
        System.out.println("3. 검색");
        System.out.println("4. 수정");
        System.out.println("5. 모두 출력");
        System.out.println("6. 데이터 파일 저장");
        System.out.println("7. 종료");
        System.out.print("입력 : ");
        int mn = sc.nextInt();
        choice(mn, sc, data);
        mn = 0;
    }

    static String[][] choice(int mn, Scanner sc, String[][] data) {
        switch (mn) {
            case 1:
                System.out.println("추가를 입력하셨습니다");
                System.out.println("이름을 입력해주세요");
                String name = sc.next();
                System.out.println("나이를 입력해주세요");
                String old = sc.next();
                System.out.println("번호을 입력해주세요");
                String number = sc.next();
                System.out.println("주소을 입력해주세요");
                String address = sc.next();
                System.out.println("메모를 입력해주세요");
                String memo = sc.next();
                String[] total = {name, old, number, address, memo};
                add(total, data);
                return data;

            case 2:
                System.out.println("삭제를 입력하셨습니다");
                System.out.println("이름을 입력해주세요");
                String deleteName = sc.next();
                delete(deleteName, data);
                break;
            case 3:
                System.out.println("검색를 입력하셨습니다");
                System.out.println("이름을 입력해주세요");
                String searchName = sc.next();
                search(searchName, data);
                break;
            case 4:
                System.out.println("수정를 입력하셨습니다");
                System.out.println("수정할 data의 이름을 입력해주세요");
                String updateName = sc.next();
                update(updateName, data);
                break;
            case 5:
                System.out.println("모두출력를 입력하셨습니다");
                allFind(data);
                break;
            case 6:
                System.out.println("저장을 입력하셨습니다");
                break;
            case 7:
                System.out.println("종료를 입력하셨습니다");
                break;
        }

//        for (int i =0 ; i < data.length ; i++) {
//            System.out.print(Arrays.toString(data[i]));
//        }
        return data;
    }

    static String[][] add(String[] query, String[][] data) {
        for(int i = 0; i < data.length ; i ++) {
            data[i] = query;
            break;
        }
        return data;
    }

    static void delete(String name, String[][] data) {
        for(int i = 0; i < data.length ; i++) {
            if(data[i][0].equals(name)){
                data[i] = null;
                System.out.println("삭제하였습니다");
                break;
            }
        }
    }

    static void update(String name, String[][] data) {
        for(int i = 0; i < data.length ; i++) {
            if(data[i][0].equals(name)){
                delete(name, data);
                break;
            }
        }
    }

    static void search(String searchName, String[][] data) {
        for(int i = 0; i < data.length ; i++) {
            if(data[i][0].equals(searchName)){
                System.out.print("찾았습니다");
                System.out.print(Arrays.toString(data[i]));
                break;
            }
        }
    }

    static void allFind(String[][] data) {
        for (int i = 0; i < data.length; i++) {
            if(data[i] != null) {
                System.out.println(Arrays.toString(data[i]));
                System.out.println(data[i][0]);
                break;    
            } else {
                System.out.println("데이터가 비어있습니다");
            }
        }
    }
}
