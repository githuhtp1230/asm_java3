package controller;

import entities.Article;
import entities.Category;
import entities.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import repositories.ArticleRepository;
import repositories.CategoryRepository;
import repositories.UserRepository;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet(urlPatterns = {
        "/quan-ly-get-all",
        "/quan-ly-chinh-tri",
        "/quan-ly-trong-nuoc",
        "/quan-ly-the-thao",
        "/quan-ly-cong-nghe",
        "/quan-ly-bat-dong-san",
        "/quan-ly-add",
        "/quan-ly-update",
        "/quan-ly-delete"
})
public class QuanLyServlet extends HttpServlet {
    String userId = null;
    User user = null;
    ArticleRepository articleRepository = new ArticleRepository();
    UserRepository userRepository = new UserRepository();
    CategoryRepository categoryRepository = new CategoryRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        Cookie[] cookies = req.getCookies();
        if ( cookies != null ) {
            for (Cookie cookie : cookies) {
                if ( cookie.getName().equals("userId") ) {
                    userId = cookie.getValue();
                    user = userRepository.getUserById(Integer.parseInt(userId));
                    req.setAttribute("userId", user.getId());
                    req.setAttribute("username", user.getFullname());
                    break;
                }
            }
        }
        if ( uri.contains("get-all") ) {
            getAll(req, resp);
        }
        else if  ( uri.contains("chinh-tri") ) {
            getAllByCategory(req, resp, 1);
        }
        else if ( uri.contains("trong-nuoc") ) {
            getAllByCategory(req, resp, 2);
        }
        else if ( uri.contains("the-thao") ) {
            getAllByCategory(req, resp, 3);
        }
        else if ( uri.contains("cong-nghe") ) {
            getAllByCategory(req, resp, 4);
        }
        else if ( uri.contains("bat-dong-san") ) {
            getAllByCategory(req, resp, 5);
        }
        else if (uri.contains("add") ) {
            req.setAttribute("categoryList", categoryRepository.getAll());
            req.getRequestDispatcher("/views/pages/quan_ly/add-article.jsp").forward(req, resp);
        }
        else if ( uri.contains("update") ) {
            Article article = articleRepository.getArticleById(Integer.parseInt(req.getParameter("articleId")));
            req.setAttribute("articleRequest", article);
            req.setAttribute("categoryList", categoryRepository.getAll());
            getAll(req, resp);
        }
        else if ( uri.contains("delete") ) {
            articleRepository.deleteArticle(Integer.parseInt(req.getParameter("articleId")));
            getAll(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if ( action.equals("add") ) {
            Article article = getArticleByRequest(req, resp);
            articleRepository.addArticle(article);
            req.getRequestDispatcher("/views/pages/quan_ly/get-all-bai-viet.jsp").forward(req, resp);
        }
        else if ( action.equalsIgnoreCase("update") ) {
            Article article = getArticleByRequest(req, resp);
            articleRepository.updateArticle(article);
            req.getRequestDispatcher("/views/pages/quan_ly/get-all-bai-viet.jsp").forward(req, resp);
        }
    }

    public void getAllByCategory(HttpServletRequest req, HttpServletResponse resp, int idCategory) throws ServletException, IOException {
        if (user.isRole()) {
            req.setAttribute("listBottom", articleRepository.getArticlesByCategorySortedDate(idCategory));
        }
        else {
            req.setAttribute("listBottom", articleRepository.getArticlesByCategoryOfUserSortedDate(idCategory, Integer.parseInt(userId)));
        }
        req.getRequestDispatcher("/views/pages/quan_ly/get-all-bai-viet.jsp").forward(req, resp);
    }

    public void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if ( user.isRole() ) {
            req.setAttribute("listBottom", articleRepository.getAllArticlesSortedDate());
        }
        else {
            req.setAttribute("listBottom", articleRepository.getArticlesByUserSortedDate(Integer.parseInt(userId)));
        }
        req.getRequestDispatcher("/views/pages/quan_ly/get-all-bai-viet.jsp").forward(req, resp);
    }

    public Article getArticleByRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        int idCategory = Integer.parseInt(req.getParameter("category"));
        Article article = new Article();
        article.setTitle(title);
        article.setContent(content);
        User newUser = new User();
        newUser.setId(user.getId());
        Category newCategory = new Category();
        newCategory.setId(idCategory);
        article.setUser(newUser);
        article.setCategory(newCategory);
        return article;
    }
}
