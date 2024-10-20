package controller;

import entities.Category;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repositories.CategoryRepository;

import java.io.IOException;

@WebServlet(urlPatterns = {
        "/get-all-the-loai"
})
public class QuanLyTheLoai extends HttpServlet {
    CategoryRepository categoryRepository = new CategoryRepository();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if ( uri.contains("get-all") ) {
            getAll(req, resp);
        }
        else if ( uri.contains("update") ) {
            int idCategory = Integer.parseInt(req.getParameter("categoryId"));
            Category category = categoryRepository.getCategoryById(idCategory);
            req.getRequestDispatcher("/views/pages/quan_ly/update-the-loai.jsp").forward(req, resp);
        }
        else if ( uri.contains("delete") ) {
            int idCategory = Integer.parseInt(req.getParameter("categoryId"));
            categoryRepository.deleteCategory(idCategory);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    public void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("categoryList", categoryRepository.getAll());
        req.getRequestDispatcher("/views/pages/quan_ly/quan-ly-the-loai.jsp").forward(req, resp);
    }
}
