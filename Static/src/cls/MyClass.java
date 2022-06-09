package cls;

public class MyClass {

    // 변수의 종류
    private int number;     // 멤버변수

    public static int glNumber;    // static 변수, 전역변수

    public void method(int num, int arr[]) {       // 매개변수 : 외부에서 값을 받는 변수
        int localNum = 0;       // 지역변수

        System.out.println("local:" + localNum);
        System.out.println("static:" + glNumber);
        System.out.println("member:" + number);


    }


}
