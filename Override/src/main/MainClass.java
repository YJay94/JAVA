package main;


import cls.ChildClass;
import overridecls.ChildOne;
import overridecls.ChildTwo;
import overridecls.SuperClass;

public class MainClass {
    public static void main(String[] args) {
     /*

        OverRide : 부모 클래스로부터 상속받은 메소드를 고쳐 기입하는것

     */

        SuperClass arrSuper[] = new SuperClass[10];

        arrSuper[0] = new ChildOne();
        arrSuper[1] = new ChildTwo();

        for(int i =0; i < arrSuper.length ; i++) {
            arrSuper[i].method();

            if(arrSuper[i] instanceof ChildOne) {
                ChildOne co = (ChildOne)arrSuper[i];
                co.ChildOneMethod();
            }
        }

    }
}
