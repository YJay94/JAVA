package cls;

public class ChildClass extends ParentClass{

    protected int age; // 자식클래스에서는 접근허용, 외부에서는 차단
    public void func() {
        System.out.println("htest");

    }
}
