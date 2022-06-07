import java.util.ArrayList;

public class MainClass {
    public static void main(String[] args) {


// 다음 암호표로 문자열을 암호화하고 다시 복호화한 결과를 출력하라.

        // 암호표
        // 알파벳
        char[] abcCode ={
                '`','~','!','@','#', '$','%','^','&','*',
                '(',')','-','_','+', '=','|','[',']','{',
                '}',';',':',',','.', '/'
        };
        // 숫자
        char[] numCode = {'q','w','e','r','t', 'y','u','i','o','p'};

        String src = "abc1234567890";
        String result = "";		// = `~!qwe

        // 복호화
        String baseCode = "";

        // 복호화 코드

        beSecret(src, abcCode, numCode);

    }

    // 암호화 코드
    static int beSecret(String src, char[] abcCode, char[] numCode){
        String result = "";
        int[] answer = new int[src.length()];
        for (int i = 0; i < src.length(); i++) {
            int k = (int) src.charAt(i);
            System.out.println(k);
            if(k >= 97) {
                int l = k - 97;
                System.out.println(abcCode[l]);
                t = abcCode[l].toString();

            }
            if(k >= 48 && k <= 57) {
                int p = k - 48;
                System.out.println(numCode[p]);
                result = result + numCode[p];
            }

        }
        return result;
    }
}
