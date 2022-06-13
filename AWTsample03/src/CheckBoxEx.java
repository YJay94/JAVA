import java.awt.*;

public class CheckBoxEx extends Frame{
    private Label lb = new Label("etc?");	//라벨생성 객체 lb
    private Checkbox[] cb = {
            new Checkbox("바나나") ,
            new Checkbox("딸기",true) ,
            new Checkbox("파인애플")
    };
    //체크박스 생성 객체 cb로
    //체크박스는 배열로 생성초기화 해야함 "딸기",true하면 처음에 선택한 채로 출력.

    private Button bt = new Button("확인"); //버튼생성 객체bt

    public CheckBoxEx() {	//생성자 CheckBoxEx
        super("CheckBoxEx");	//프레임한테 상속받음 타이틀에 쓸 내용 입력.

        setLayout(new GridLayout(5,1));	//5행1열로 똑같은 크기로 5행씩 1열로 나옴.(사이즈가)
        add(lb);	//추가한다. 라벨 (순차적으로 들어감)

        for(int i = 0; i < 3; i++) {	//반복문 i=3이 될때까지.
            add(cb[i]);
            //추가한다. cb객체(CheckBox)에다가 [i]번째
            //0번 바나나 추가
            //1번 딸기 체킹 추가
            //2번 파인애플 추가.
        }

        add(bt);	//추가한다.버튼을 (순차적으로)_마지막에 들어감.
        pack();		//최소크기로 레이아웃 설정
        setVisible(true);	//화면출력을 위한 true

    }


    public static void main(String[] args) {
        CheckBoxEx cb = new CheckBoxEx();

    }

}
