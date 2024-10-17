package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repositories.ArticleRepository;

import java.io.IOException;

@WebServlet(urlPatterns = {
        "/index"
})
public class Servlet extends HttpServlet {
    ArticleRepository articleRepository = new ArticleRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("listChinhTri", articleRepository.getArticlesByQuantityAndCategory(3, 1));
        req.setAttribute("listTrongNuoc", articleRepository.getArticlesByQuantityAndCategory(3, 2));
        req.setAttribute("listTheThao", articleRepository.getArticlesByQuantityAndCategory(4, 3));
        req.setAttribute("listCongNghe", articleRepository.getArticlesByQuantityAndCategory(3, 4));
        req.setAttribute("listBatDongSan", articleRepository.getArticlesByQuantityAndCategory(4, 5));
        req.setAttribute("listLienQuan", articleRepository.getArticlesByQuantity(4));
        req.setAttribute("listBottom", articleRepository.getArticlesByQuantity(5));
        req.getRequestDispatcher("/views/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
