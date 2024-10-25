<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<div class="content_area">
    <div class="content-bottom__list content-bottom__list--category">
        <c:forEach var="article" varStatus="i" items="${listBottom}">
            <div class="content-bottom__item">
                <figure class="content-bottom__img-container">
                    <img class="content-bottom__img" alt="" src="${article.imageUrl}"/>
                </figure>
                <div class="content-bottom__right">
                    <div>
                        <h2 class="content-bottom__title">${article.title}</h2>
                        <p class="content-bottom__desc truncate_text">${article.content}</p>
                    </div>
                    <p>${article.user.fullname} | ${article.published_date}</p>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="sidebar sidebar--category">
        <div class="single_sidebar popular-news">
            <h2 class="title">Bản tin nổi bật</h2>
        </div>
        <div class="single_sidebar">
            <div class="news-letter">
                <%--                  <h2>Đăng ký tài khoản</h2>--%>
                <%--                  <p>Nhận tin tức sớm nhất từ Newsletter</p>--%>
                <%--                  <form action="#" method="post">--%>
                <%--                    <input type="text" id="name" placeholder="Email"/>--%>
                <%--                    <input type="text" id="email" placeholder="Password" />--%>
                <%--                    <input type="submit" value="Đăng ký" id="form-submit" />--%>
                <%--                  </form>--%>
                <%--                  <p class="news-letter-privacy">--%>
                <%--                    Vui lòng không spam!--%>
                <%--                  </p>--%>
                <p class="news-aside__item">5 Bản tin mới nhất</p>
                <p class="news-aside__item">5 Bản tin được xem nhiều</p>
                <p class="news-aside__item">5 Bản tin bạn đã xem</p>
            </div>
        </div>
        <div class="single_sidebar">
            <div class="popular">
                <h2 class="title">Xem nhiều</h2>
                <ul>
                    <li>
                        <div class="single_popular">
                            <p>Sept 24th 2045</p>
                            <h3>
                                Hezbollah xác nhận thủ lĩnh tối cao thiệt mạng
                                <a href="#" class="readmore">Read More</a>
                            </h3>
                        </div>
                    </li>
                    <li>
                        <div class="single_popular">
                            <p>Sept 24th 2045</p>
                            <h3>
                                Nga liên tiếp phóng tên lửa siêu vượt âm vào thành phố miền tây Ukraine
                                <a href="#" class="readmore">Read More</a>
                            </h3>
                        </div>
                    </li>
                    <li>
                        <div class="single_popular">
                            <p>Sept 24th 2045</p>
                            <h3>
                                18 năm chuẩn bị trước khi Israel liên tiếp giáng đòn vào Hezbollah
                                <a href="#" class="readmore">Read More</a>
                            </h3>
                        </div>
                    </li>
                    <li>
                        <div class="single_popular">
                            <p>Sept 24th 2045</p>
                            <h3>
                                Bắt cóc bé sơ sinh về nuôi để ép bạn trai kết hôn
                                <a href="#" class="readmore">Read More</a>
                            </h3>
                        </div>
                    </li>
                    <li>
                        <div class="single_popular">
                            <p>Sept 24th 2045</p>
                            <h3>
                                Israel có thể đã dùng bom xuyên nặng 2,3 tấn để tập kích Beirut
                                <a href="#" class="readmore">Read More</a>
                            </h3>
                        </div>
                    </li>
                </ul>
                <a class="popular_more">thêm<i class="fa-solid fa-plus"></i></a>
            </div>
        </div>
        <div class="single_sidebar">
            <img src="${pageContext.request.contextPath}/assets/img/add1.png" alt="" />
        </div>
        <div class="single_sidebar">
            <h2 class="title">ADD</h2>
            <img src="${pageContext.request.contextPath}/assets/img/add1.png" alt="" />
        </div>
    </div>
</div>