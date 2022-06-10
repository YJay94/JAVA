public class YouClass {

    public void setTag(int tag) {
        this.tag = tag;
    }

    private int tag;

    public YouClass(int number) {
        this.tag = tag;
    }

    public void func() {
        SingletonClass sc = SingletonClass.getInstance();
        tag = sc.num;
    }

}
