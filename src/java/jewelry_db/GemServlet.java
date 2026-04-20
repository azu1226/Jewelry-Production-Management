package jewelry_db;

import jakarta.servlet.http.HttpServlet; //Webサーバーとしての基本能力
import jakarta.servlet.annotation.WebServlet; //アノテーション：ネット上の住所の割り当て
import jakarta.servlet.http.HttpServletRequest; //リクエスト：ブラウザからの注文票
import jakarta.servlet.http.HttpServletResponse; //サーバーからの返答

import jakarta.servlet.ServletException; //例外
import java.io.IOException;

import java.sql.DriverManager; //管理者　
import java.sql.Connection; //接続保存場所
import java.sql.Statement; //伝言役
import java.sql.ResultSet; //受け取り
import java.util.ArrayList;
import java.util.List;

//これで動くようになる
@WebServlet("/gem-list")

public class GemServlet extends HttpServlet {
    String url = "jdbc:mysql://localhost:3306/jewelry_db";
    String user = "root";
    String pass = "";

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{

    List<GemStone> gemList = new ArrayList<>();

    try{
        System.out.println("接続を開始します...");
            /*JDBCドライバに接続するためにドライバを管理しているDriverManagerに
            接続して(gettConnection(url,user,passを渡す))と指示
            接続するとつながった状態になるのでそれを保存するためにConnectionに初期化する*/
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
        System.out.println("接続に成功しました。");

        String sql = "select * from loose_stones"; //指示書 "select * from 持ってきたいテーブル名"
        Statement st = con.createStatement(); //JavaとMySQLを行き来する伝言役を作成
        ResultSet rs = st.executeQuery(sql); //実行コマンド
        //*伝言役（st）」に「注文票（sql）」を渡し、「これをMySQLに届けて、結果を持ってきて！」と命令



        //取り出す作業
        while (rs.next()) {

            String mineralName = rs.getString("鉱物名 (Mineral name)");
            String gemName = rs.getString("宝石名 (Gem name)");
            String area = rs.getString("産地 (Production area)");
            String color = rs.getString("カラー (Color)");
            String cut = rs.getString("形状 (Cut)");
            double carat = rs.getDouble("カラット (Carat)");
            double height = rs.getDouble("縦：Height (mm)");
            double width = rs.getDouble("横：width (mm)");
            double depth = rs.getDouble("厚み：depth (mm)");
            double hard = rs.getDouble("モース硬度 (Mohs hardness)");
            boolean change = rs.getBoolean("カラーチェンジ (Color change)");
            boolean treatment = rs.getBoolean("加熱処理 (Heat Treatment)");
            String processing = rs.getString("加工処理 (Processing)");
            String memo = rs.getString("処理詳細 (memo)");
                         //デバッグ
                /*System.out.println("-------------------------------------");
                System.out.println("鉱物名:" + mineralName);
                System.out.println("宝石名:" + gemName);
                System.out.println("産地:" + area);
                System.out.println("カラー:" + color);
                System.out.println("形状:" + cut);
                System.out.println("カラット数:" + carat + "ct");
                System.out.println("縦*横*厚み:" + height + "mm*" + width + "mm*" + depth + "mm");
                System.out.println("モース硬度:" + hard);
                System.out.println("カラーチェンジ:" + (change ? "有":"無"));
                System.out.println("加熱処理:" + (treatment ? "有":"無"));
                System.out.println("加工処理:" + (processing == null || processing.isEmpty() ? "-":processing));
                System.out.println("処理詳細:" + (memo == null || memo.isEmpty() ? "-":memo));
                //DBの設計によっては、「全くの空（null）」で保存される場合と、「長さ0の文字("")」として保存される場合がある
                */
                    GemStone gem = new GemStone(mineralName, gemName, area, color, cut, carat,
                            height, width, depth, hard, change, treatment, processing, memo);
                    gemList.add(gem);
                }
                //デバッグ◎
                //System.out.println("リストサイズ:" + gemList.size());


            } catch (Exception e) {
                System.out.println("接続に失敗しました");
                e.printStackTrace(); //エラー詳細表示
            }

    //DB接続前のテスト
    // request.setAttribute("price",1500); //荷札を張ってデータをセット

    request.setAttribute("gemList",gemList);
    request.getRequestDispatcher("/index.jsp").forward(request,response); //JSPにバトンタッチ
}
}

