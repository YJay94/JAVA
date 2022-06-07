import java.util.Arrays;
import java.util.Scanner;

public class MainClass {
    public static void main(String[] args) {
        /*
        *   Sorting : 정렬
        *               선택, 버블, 합병, 퀵
        * */

    int count;
    int number[] = null;
    boolean updown;

    Scanner sc = new Scanner(System.in);

    System.out.print("정렬할 갯수 = ");
    count = sc.nextInt();

    int w = 0;
        while(w < count) {
            System.out.print((w + 1) + "번째 수 = ");
            String numStr = sc.next();

            boolean b = true;
            for (int i = 0; i < numStr.length(); i++) {
                int asc = (int)numStr.charAt(i);
                if(asc < 48 || asc > 57) {
                    b = false;
                    break;
                }
            }

            if(!b) {
                System.out.println("숫자만 입력해 주세요.");
                continue;
            }
                number[w] = Integer.parseInt(numStr);
                w++;

        }

        System.out.println(Arrays.toString(number));
    }
}
