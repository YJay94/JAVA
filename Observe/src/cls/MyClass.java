package cls;

import java.util.Observable;

public class MyClass extends Observable {

    private String perArg = null;

    @Override
    public void notifyObservers(Object arg) {
        String str = (String)arg;

        // 변화가 없다
        if(str.equals(perArg)) return;

        perArg = str;

        setChanged(); // reset

        super.notifyObservers(arg);
        clearChanged();

    }

    // 일반 메소드



}
