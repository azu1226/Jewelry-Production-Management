package jewelry_db.servlet;

import jakarta.servlet.http.HttpServlet; //Webサーバーとしての基本能力
import jakarta.servlet.annotation.WebServlet; //アノテーション：ネット上の住所の割り当て
import jakarta.servlet.http.HttpServletRequest; //リクエスト：ブラウザからの注文票
import jakarta.servlet.http.HttpServletResponse; //サーバーからの返答
import jakarta.servlet.ServletException; //例外
import java.io.IOException;

//これで動くようになる
@WebServlet("/item-entry")

public class ItemEntryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

        //DAO呼び出し
        jewelry_db.dao.GemDAO dao = new jewelry_db.dao.GemDAO();

        //DAOからリストもってくる
        java.util.List<jewelry_db.date.GemStone> gemList = dao.findAll();

        //未設定!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        request.setAttribute("\"gemList\",gemList???????????????",gemList);
        request.getRequestDispatcher("/gem_list.jsp?????????????????????").forward(request,response); //JSPにバトンタッチ
        //未設定!!!!!!!!!!!!!!!!!!!!!!!!!!!!

    }
}
