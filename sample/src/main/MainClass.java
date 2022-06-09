package main;

import cls.MyClass;

public class MainClass {
    public static void main(String[] args) {
        /*
            절차지향 : 변수선언, 함수 -> 연산
                    순서지향 1 2 3 4
                    유지보수 매우 안좋음, 재사용X
                    속도 우수, C언어

            객체지향 : class(object 설계도)
                    유지보수 우수, 재사용성
                    가독성, Java언어, MFC C#
        * */

        // 초기화
        int array[] = {1, 2, 3};

        /*

               constructor : 생성자    != initialize
                        class 생성시에 자동으로 호출되는 함수.
                        클래스명과 같은 함수.
                        return 값이 없다
                        overload가 가능하다
                        생략이 가능하다

            destructor : 소멸자

            stack heap static sys
            cls   new

        * */

//        MyClass mycls = new MyClass();

        MyClass mycls = new MyClass(1, "hi");


    }
}
