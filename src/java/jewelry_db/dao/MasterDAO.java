package jewelry_db.dao;

import java.sql.DriverManager; //管理者　
import java.sql.Connection; //接続保存場所
import java.sql.Statement; //伝言役
import java.sql.ResultSet; //受け取り

import java.util.ArrayList;
import java.util.List;
import jewelry_db.date.Master; // 入れ物クラスをインポート

public class MasterDAO { //DAO...DateAccessObjectの略
    String url = "jdbc:mysql://localhost:3306/jewelry_db";
    String user = "root";
    String pass = "";

    public List<Master> findAll() {
        List<Master> metalList = new ArrayList<>();



        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,user,pass);

            String sql = "select * from m_metals"; //指示書 "select * from 持ってきたいテーブル名"
            Statement st = con.createStatement(); //JavaとMySQLを行き来する伝言役を作成
            ResultSet rs = st.executeQuery(sql); //実行コマンド
            //*伝言役（st）」に「注文票（sql）」を渡し、「これをMySQLに届けて、結果を持ってきて！」と命令

            while (rs.next()){
            String metalName = rs.get.String("金属(Metal Name")
            }

        } catch (Exception e) {
            System.out.println("接続に失敗しました");
            e.printStackTrace(); //エラー詳細表示
        }

        return  metalList;

    }
}
