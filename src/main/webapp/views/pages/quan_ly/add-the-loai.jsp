<%-- Created by IntelliJ IDEA. User: Ca1 Date: 9/28/2024 Time: 3:03 PM To change
this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
    <%--
    <LINK
      REL="StyleSheet"
      HREF="<%=request.getContextPath()%>/assets/style/reset.css"
      TYPE="text/css"
    />
    --%>
    <LINK
            REL="StyleSheet"
            HREF="${pageContext.request.contextPath}/assets/style/form-quan-ly-bai-viet.css?v=1.0"
            TYPE="text/css"></LINK>
    <LINK
            REL="StyleSheet"
            HREF="${pageContext.request.contextPath}/assets/style/style.css?v=1.0"
            TYPE="text/css"></LINK>
    <LINK
            REL="StyleSheet"
            HREF="${pageContext.request.contextPath}/assets/style/form.css?v=1.0"
            TYPE="text/css"></LINK>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
</head>
<body style="background: url('${pageContext.request.contextPath}/assets/img/site_bg.png') top center no-repeat fixed #000;">
<div class="body_wrapper">
    <div class="center">
        <div class="header_area">
            <div class="logo">
                <a href="../asm/index">
                    <img
                            src="${pageContext.request.contextPath}/assets/img/header_logo.png"
                            alt=""
                            class="header__logo"
                    />
                </a>
            </div>
            <div class="top_menu">
                <ul>
                    <li><a href="#">Liên hệ</a></li>
                    <li><a href="../asm/form-dang-ky">Đăng ký</a></li>
                    <c:if test="${empty userId}">
                        <li><a href="../asm/form-dang-nhap">Đăng nhập</a></li>
                    </c:if>
                    <c:if test="${not empty userId}">
                        <li><a href="../asm/form-dang-xuat">Đăng xuất</a></li>
                    </c:if>
                    <%--                <c:if test="${not empty userId or userId != 0}">--%>
                    <%--                  <li><a href="../asm/form-dang-nhap">Quản lý</a></li>--%>
                    <%--                </c:if>--%>
                </ul>
            </div>
            <div class="social_plus_search">
                <c:if test="${not empty userId}">
                    <p style="text-align: end">Chào mừng ${username}</p>
                </c:if>
                <div class="social">
                    <ul>
                        <li><i class="fa-brands fa-facebook"></i></li>
                        <li><i class="fa-brands fa-twitter"></i></li>
                        <li><i class="fa-brands fa-tiktok"></i></li>
                    </ul>
                </div>
                <div class="search">
                    <form action="#" method="post" id="search_form" class="search_form-class">
                        <input type="text" class="search__input" placeholder="Search" />
                        <%--
                        <input type="submit" id="searchform" value="search" />--%>
                        <button type="submit" class="search__btn">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                        <input type="hidden" value="post" name="post_type" />
                    </form>
                </div>
            </div>
        </div>
        <div class="main_menu_area">
            <ul id="nav">
                <li>
                    <a href="#">Thể loại</a>
                    <ul>
                        <li><a href="../asm/quan-ly-chinh-tri">Chính trị</a></li>
                        <li><a href="../asm/quan-ly-trong-nuoc">Trong nước</a></li>
                        <li><a href="../asm/quan-ly-the-thao">Thể thao</a></li>
                        <li><a href="../asm/quan-ly-cong-nghe">Công nghệ</a></li>
                        <li><a href="../asm/quan-ly-bat-dong-san">Bất động sản</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="content-bottom__list">
            <div class="row" style="padding: 20px 50px">
                <div class="col-md-12">
                    <form action="../asm/get-all-the-loai" method="post">

                        <fieldset>
                            <label for="category">Category:</label>
                            <input type="text" required id="category" name="category">
                        </fieldset>

                        <button type="submit" value="add" name="action">Thêm thể loại</button>

                    </form>
                </div>
            </div>
        </div>
        <div class="footer_bottom_area">
            <div class="footer_menu">
                <ul id="f_menu">
                    <li><a href="#">Thế giới</a></li>
                    <li><a href="#">Thể thao</a></li>
                    <li><a href="#">Công nghệ</a></li>
                    <li><a href="#">Kinh doanh</a></li>
                    <li><a href="#">Phim ảnh</a></li>
                    <li><a href="#">Giải trí</a></li>
                    <li><a href="#">Văn hóa</a></li>
                    <li><a href="#">Chính trị</a></li>
                    <li><a href="#">Đời sống</a></li>
                    <li><a href="#">Học tập</a></li>
                </ul>
            </div>
            <div class="copyright_text">
                <p>
                    Copyright &copy; 2045 The News Reporter Inc. All rights reserved
                    | Design by
                    <a
                            target="_blank"
                            rel="nofollow"
                            href="http://www.graphicsfuel.com/2045/10/wp-magazine-theme-template-psd/"
                    >Rafi MD</a
                    >
                </p>
                <p>
                    Trade marks and images used in the design are the copyright of
                    their respective owners and are used for demo purposes only.
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
