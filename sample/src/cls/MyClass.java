package cls;

public class MyClass {
    private int number;
    private String name;
    private double height;

    public MyClass() {
        System.out.println("MyClass MyClass()");
        this.number = 1;
        this.name = "";
        this.height = 0.0;
    }

    public MyClass(int number, String name) {
        System.out.println("MyClass(int number, String name)");

    }

    /*

        this : 자기 참조 -> class 생성시 heap영역에 저장되는 영역의 주소
                각 함수 별로 0번쨰 매개변수

    * **/

    public MyClass getThis() {
        return this;
    }

}
