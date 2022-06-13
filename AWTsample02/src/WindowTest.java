import java.awt.*;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

public class WindowTest extends Frame  implements WindowListener {
    @Override
    public void windowOpened(WindowEvent e) {

    }

    @Override
    public void windowClosing(WindowEvent e) {

    }

    @Override
    public void windowClosed(WindowEvent e) {

    }

    @Override
    public void windowIconified(WindowEvent e) {

    }

    @Override
    public void windowDeiconified(WindowEvent e) {

    }

    @Override
    public void windowActivated(WindowEvent e) {

    }

    @Override
    public void windowDeactivated(WindowEvent e) {

    }

    public WindowTest() {

        setLayout(new FlowLayout());


        Label lable = new Label();
        lable.setText("레이블입니다");
        lable.setBounds(100, 100, 150, 30);
        add(lable);

        Button btn = new Button();
        btn.setLabel("버튼");
        add(btn);

        TextField textFiled = new TextField();
        add(textFiled);

        setSize(640, 480);
        setBackground(Color.gray);
        setLocation(0, 0);
        setVisible(true);

        addWindowListener(null);



    }


}
