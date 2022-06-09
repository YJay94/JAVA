package main;

import cls.AbstractClass;
import cls.MyClass;

public class MainClass {
    public static void main(String[] args) {
        /*
            Abstract class : 추상 클래스
                             추상 메소드를 하나 이상 포함하고 있는 클래스
                             abstract method : 처리내용은 없고 선언만 되어있음
                             prototype 선언
                             int method(char c)



         */

        MyClass mycls = new MyClass();
        mycls.abstractMethod();


    }
}
