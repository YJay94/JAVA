import java.awt.*;

public class ButtonEx extends Frame {
    private String[] str = {"7", "8", "9", "10"};
    private Button[] bt = new Button[str.length];

    ButtonEx() {
        super("Button Example");
        setLayout(new GridLayout(4,3,3,5));
        for(int i = 0; i < bt.length; i++) {
            bt[i] = new Button(str[i]);
            bt[i].setFont(new Font("굴림체", Font.BOLD, 30));
            add(bt[i]);
        }
        setSize(300,200);
        setVisible(true);
    }
    public static void main(String[] args) {
        new ButtonEx();
    }
}