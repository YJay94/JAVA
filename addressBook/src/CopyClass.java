import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Scanner;

public class CopyClass {
    public static void main(String[] args) {
        String[][] human = new String[100][5];
        int humanCount = 0;


    }

    // CRUD - Create Read Update Delete
    // DAO - Data Access Object

    static int insert(String[][] human, int humanCount) {

        Scanner sc = new Scanner(System.in);

        System.out.println("이름 = ");
        String name = sc.next();

        System.out.print("나이 = ");
        int age = sc.nextInt();

        System.out.print("전화번호 = ");
        String phone = sc.next();

        System.out.println("주소 = ");
        String address = sc.next();

        System.out.print("메모 = ");
        String memo = sc.next();

        human[humanCount][0] = name;
        human[humanCount][1] = age + "";
        human[humanCount][2] = phone;
        human[humanCount][3] = address;
        human[humanCount][4] = memo;

        humanCount++;
        return humanCount;
    }

    static void delete(String[][] human) {

        Scanner sc = new Scanner(System.in);

        System.out.print("삭제하고 싶은 이름 = ");
        String name = sc.next();

        int index = search(human, name);
        if(index == -1) {
            System.out.println("정보를 찾을 수 없습니다다");
            return;
        }

   }

    static void select(String[][] human) {

        Scanner sc = new Scanner(System.in);

    }

    static void update(String[][] human) {

        Scanner sc = new Scanner(System.in);
        String name = sc.next();

        int index = search(human, name);
        if(index == -1) {
            System.out.println("정보를 찾을 수 없습니다");
            return;
        }

        System.out.println("수정할 전화번호 = ");
        String phone = sc.next();

        human[index][2] = phone;

        System.out.println("정상적으로 수정하였습니다");

    }

    static int search(String[][] human, String name){
        int index = -1;

        for (int i = 0; i < human.length; i++) {
            if(human[i][0].equals(name)) {
                index = i;
                break;
            }
        }
        return index;
    }

    static String[][] searchAll(String[][] human, String name) {

        int count = 0;
        // 카운터
        for (int i = 0; i < human.length; i++) {
            if(human[i][0].equals(name)) {
                count++;
            }
        }

        if(count == 0) {
            return null;
        }

        // 할당
        String findMember[][] = new String[count][5];
        int cou = 0;

        // 데이터 저장
        for (int i = 0; i < human.length; i++) {
            if(human[i][0].equals(name)) {
                findMember[cou] = human[i];
                cou++;
            }
        }

        return findMember;
    }


    static void print(String[][] human) {

        for (int i = 0; i < human.length ; i++) {
            for (int j = 0; j < human[i].length; j++) {
                if(human[i][j] != null && human[i][j].equals("")) {
                    System.out.print(human[i][j] + " ");
                }
            }
            System.out.println();
        }

    }

    static void save(String[][] human, String filename) {

        File file = new File("c:\\Temp\\" + filename + ".txt");

        PrintWriter pw = new PrintWriter((new BufferedWriter(new FileWriter(file)));
    }

    static String[][] load() {

        return null;
    }
}
