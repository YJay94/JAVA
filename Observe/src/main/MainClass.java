package main;

import cls.MyClass;

public class MainClass {
    public static void main(String[] args) {
        /*

            Observer : 정찰 또는 감시



         */

        MyClass cls = new MyClass();

        cls.notifyObservers("password:Abc123");

    }
}
