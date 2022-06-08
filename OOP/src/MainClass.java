import cls.human;

public class MainClass {
    public static void main(String[] args) {
        /*
            절차지향 순서
            1 -> 2 -> 3 ->
            5만라인을 초과하는 순간 작성자 힘들어 진다

            Object Oriented Programming -> C++

            int human[][] = {
                { name, age}
            };



        * */

            Human h = new Human();
            h.name = "홍길동";
            h.age = 24;
            h.address = "서울시";

            h.method();


    }
}
