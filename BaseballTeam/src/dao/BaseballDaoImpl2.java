package BaseballTeam.src.dao;

import java.util.Scanner;

public class BaseballDaoImpl2 implements BaseballDao {
    Scanner sc = new Scanner(System.in);

    private List<HumanDto> list = new ArrayList<~>();

    private int memberNum;

    private DataProc dp;

    public BaseballDaoImpl() {
        
        dp = new DataProc("lions");
        dp.createFile();

        dataLoad();

        // 등록번호를 맞춰주기 위한 처리

    }
}
