package main;

import java.util.ArrayList;
import java.util.List;

public class MainClass {
    public static void main(String[] args){
        /*

            Collection : 수집

            List : 목록

                ArrayList, vector
                    배열처럼 사용할 수 있는 컬렉션
                    선형구조    o-o-o-o-o-
                    검색속도가 빠르다
                    index로 접근한다.

                LinkedList -> 게임
                    node를 추가/삭제 빠르다


            Map :


         */

        //ArrayList<Integer> list = new ArrayList<Integer>();

        List<Integer> list = new ArrayList<Integer>();

        // 추가
        Integer in = new Integer(111);
        list.add(in);

        list.add(222);

        list.add(new Integer(333));

        int len = list.size();
        System.out.println("목록의 크기:" + len);

        for (int i = 0; i < len; i++ ) {
            System.out.println(list.get(i));
        }

        // 원하는 위치에 추가
        list.add(1, 200);

        for (Integer integer: list) {
            System.out.println(integer);
        }

        // 삭제
        list.remove(2);
        for (Integer integer: list) {
            System.out.println(integer);
        }


        // 검색
        int index = list.indexOf(333);
        System.out.println(index);

        index = -1;
        for (int i = 0; i < list.size(); i++) {
            Integer v = list.get(i);
            if(v == 200) {
                index = i;
                break;
            }
        }

        // 수정
        list.set(2, 666);
        for (Integer integer: list) {
            System.out.println(integer);
        }

        List<Integer> objlist = new ArrayList<Integer>();
        objlist.add(222);
        for (int i =0; i < 5;  i++) {
            objlist.add(i);
        }

        objlist.add(3, 222);

        for (Integer integer: objlist) {
            System.out.println(integer);
        }


    }
}
