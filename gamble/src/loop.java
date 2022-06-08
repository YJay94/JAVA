package gamble.src;
import java.util.Scanner;

public class loop {
    static void action() {
        while(true) {
            Scanner sc = new Scanner(System.in);
            System.out.println("배당할 코인 수는?");
            int coin = sc.nextInt();
            int gamble1 = gamble();
            int gamble2 = gamble();
            int sum_gamble = gamble1 + gamble2;
            System.out.println("두 주사위의 합은?" + sum_gamble);
            int sum = sc.nextInt();
            if(sum == 2 || sum == 12) {
                System.out.println("2와 12는 처음부터 다시 입력하세요");
                continue;
            }
            switch(sum){
                case 2, 12:
                    System.out.println("제시할수 없습니다.");
                    break;
                case 3, 18:
                    System.out.println("18배 입니다.");
                    System.out.println("반환금액" + coin*18);
                    break;
                case 4, 10:
                    System.out.println("12배 입니다.");
                    System.out.println("반환금액" + coin*12);
                    break;
                case 5, 9:
                    System.out.println("9배 입니다.");
                    System.out.println("반환금액" + coin*9);
                    break;
                case 6, 8:
                    System.out.println("7배 입니다.");
                    System.out.println("반환금액" + coin*7);
                    break;
                case 7:
                    System.out.println("6배 입니다.");
                    System.out.println("반환금액" + coin*6);
                    break;
                default:
                    System.out.println("꽝 입니다.");
                    break;
            }
        }
    }

    static int gamble(){
        int output = 0;
        for(int i = 0; i < 1; i++) {
            double dValue = Math.random();
            output = (int)(dValue * 6 + 1);
//            System.out.println(output);
        }
        return output;
    }
}
