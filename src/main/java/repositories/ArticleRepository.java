package repositories;

import entities.Article;
import entities.Category;
import entities.User;
import untils.SQLServerConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ArticleRepository {
    Connection connection = SQLServerConnection.getConnection();
    public List<Article> getAllArticles() {
        List<Article> articles = new ArrayList<Article>();
        try {
            String query = "SELECT * FROM dbo.articles ORDER BY NEWID()";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getInt("article_id"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setImageUrl(rs.getString("image_url"));
                article.setPublished_date(rs.getDate("created_at"));

                User user = new User();
                user.setId(rs.getInt("user_id"));
                article.setUser(user);

                Category category = new Category();
                category.setId(rs.getInt("category_id"));
                article.setCategory(category);

                articles.add(article);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articles;
    }

    public List<Article> getAri() {
        List<Article> articles = new ArrayList<Article>();
        try {
            String query = "SELECT * FROM dbo.articles ORDER BY NEWID()";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getInt("article_id"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setImageUrl(rs.getString("image_url"));
                article.setPublished_date(rs.getDate("created_at"));

                User user = new User();
                user.setId(rs.getInt("user_id"));
                article.setUser(user);

                Category category = new Category();
                category.setId(rs.getInt("category_id"));
                article.setCategory(category);

                articles.add(article);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return articles;
    }

    public List<Article> getArticlesByQuantity(int quantity) {
        List<Article> articles = new ArrayList<>();
        try {
            // Chuẩn bị câu truy vấn với tham số cho số lượng bài báo cần lấy
            String query = "SELECT TOP (?) *\n" +
                    "FROM dbo.articles\n" +
                    "INNER JOIN dbo.users \n" +
                    "ON users.user_id = articles.user_id\n" +
                    "INNER JOIN dbo.categories\n" +
                    "ON categories.category_id = articles.category_id\n" +
                    "ORDER BY NEWID()";

            // Sử dụng PreparedStatement để truyền tham số
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, quantity);  // Truyền giá trị của quantity vào câu truy vấn

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getInt("article_id"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setImageUrl(rs.getString("image_url"));
                article.setPublished_date(rs.getDate("created_at"));

                User user = new User();
                user.setId(rs.getInt("user_id"));
                user.setFullname(rs.getString("username"));
                article.setUser(user);

                articles.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return articles;
    }

    public List<Article> getArticlesByQuantityAndCategory(int quantity, int categoryId) {
        List<Article> articles = new ArrayList<>();
        try {
            // Chuẩn bị câu truy vấn với tham số cho số lượng bài báo cần lấy
            String query = "SELECT TOP (?) *\n" +
                    "FROM dbo.articles\n" +
                    "INNER JOIN dbo.users \n" +
                    "ON users.user_id = articles.user_id\n" +
                    "INNER JOIN dbo.categories\n" +
                    "ON categories.category_id = articles.category_id\n" +
                    "WHERE dbo.categories.category_id = ?\n" +
                    "ORDER BY NEWID()";

            // Sử dụng PreparedStatement để truyền tham số
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, quantity);  // Truyền giá trị của quantity vào câu truy vấn
            stmt.setInt(2, categoryId);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Article article = new Article();
                article.setId(rs.getInt("article_id"));
                article.setTitle(rs.getString("title"));
                article.setContent(rs.getString("content"));
                article.setImageUrl(rs.getString("image_url"));
                article.setPublished_date(rs.getDate("created_at"));

                User user = new User();
                user.setId(rs.getInt("user_id"));
                user.setFullname(rs.getString("username"));
                article.setUser(user);

                articles.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return articles;
    }
}
