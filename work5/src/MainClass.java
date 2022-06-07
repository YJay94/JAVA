import java.util.Scanner;

public class MainClass {
    public static void main(String[] args) {
    int num1, num2;
    String oper;

    // 함수 -> 숫자가 입력이 안되면 다시 입력!!
    // 첫번쨰 수 입력

    // 연산자 입력 -> 연산자가 정상입력

    // 두전쨰 수 입력

    //연산

    //결과 출력
    isNum("aa1");

    Scanner sc = new Scanner(System.in);
    String tt = sc.next();

    }




    static boolean isNum(String a) {
        boolean result = true;

        if (a == null || a.length() == 0) {
            result = false;
        }
        // null이나 공백이 아닐시
        else {
            for (int i = 0; i < a.length(); i++) {
                int c = (int) a.charAt(i);
                // 숫자가 아니라면
                if (c < 48 || c > 57) {
                    result = false;
                }
            }
        }
        return result;
    }
}
