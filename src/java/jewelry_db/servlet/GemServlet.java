package jewelry_db.servlet;

import jakarta.servlet.http.HttpServlet; //Webサーバーとしての基本能力
import jakarta.servlet.annotation.WebServlet; //アノテーション：ネット上の住所の割り当て
import jakarta.servlet.http.HttpServletRequest; //リクエスト：ブラウザからの注文票
import jakarta.servlet.http.HttpServletResponse; //サーバーからの返答
import jakarta.servlet.ServletException; //例外
import java.io.IOException;

//これで動くようになる
@WebServlet("/gem-list")

public class GemServlet extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{

    //DAO呼び出し
    jewelry_db.dao.GemDAO dao = new jewelry_db.dao.GemDAO();

    //DAOからリストもってくる
    java.util.List<jewelry_db.date.GemStone> gemList = dao.findAll();

    //DB接続前のテスト
     //request.setAttribute("price",1500); //荷札を張ってデータをセット

    request.setAttribute("gemList",gemList);
    request.getRequestDispatcher("/gem_list.jsp").forward(request,response); //JSPにバトンタッチ
}
}

