<%-- Created by IntelliJ IDEA. User: Ca1 Date: 9/28/2024 Time: 3:03 PM To change
this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <html>
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
              <a href="#">
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
                <li><a class="register">Đăng ký</a></li>
                <li><a class="signin">Đăng nhập</a></li>
              </ul>
            </div>
            <div class="social_plus_search">
              <div class="social">
                <ul>
                  <li><i class="fa-brands fa-facebook"></i></li>
                  <li><i class="fa-brands fa-twitter"></i></li>
                  <li><i class="fa-brands fa-tiktok"></i></li>
                </ul>
              </div>
              <div class="search">
                <form action="#" method="post" id="search_form">
                  <input type="text" id="s" placeholder="Search" />
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
                <a href="#">Trang chủ</a>
                <ul>
                  <li><a href="#">Single item</a></li>
                  <li><a href="#">Single item</a></li>
                  <li>
                    <a href="#">Single item</a>
                    <ul>
                      <li><a href="#">Single item</a></li>
                      <li><a href="#">Single item</a></li>
                      <li><a href="#">Single item</a></li>
                      <li><a href="#">Single item</a></li>
                      <li><a href="#">Single item</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Single item</a></li>
                  <li><a href="#">Single item</a></li>
                </ul>
              </li>
              <li><a href="#">Văn hóa</a></li>
              <li>
                <a href="#">Trang chủ</a>
                <ul>
                  <li><a href="#">Single item</a></li>
                  <li><a href="#">Single item</a></li>
                  <li><a href="#">Single item</a></li>
                  <li><a href="#">Single item</a></li>
                  <li><a href="#">Single item</a></li>
                </ul>
              </li>
              <li><a href="#">Tin tức</a></li>
            </ul>
          </div>
          <div class="slider_area">
            <div class="slider">
              <ul class="bxslider">
                <li class="bxslider__item">
                  <div class="bxslider__overlay"></div> <!-- Phần tử phủ -->
                  <img src="${pageContext.request.contextPath}/assets/img/1.jpg" alt="" title="Slider caption text" class="bxslider__img"/>
                  <div class="bxslider__text-container"> <!-- Thêm thẻ div bao quanh -->
                    <h1 class="bxslider__title">Cuộc đời của thủ lĩnh tối cao Hezbollah bị hạ sát</h1>
                    <p class="bxslider__desc">Hassan Nasrallah đã đứng đầu Hezbollah suốt 32 năm, được các thành viên tôn kính và đóng vai trò quan trọng trong "trục kháng chiến" do Iran hậu thuẫn.</p>
                  </div>
                </li>
<%--                <li class="bxslider__item">--%>
<%--                  <div class="bxslider__overlay"></div> <!-- Phần tử phủ -->--%>
<%--                  <img src="${pageContext.request.contextPath}/assets/img/1.jpg" alt="" title="Slider caption text" class="bxslider__img"/>--%>
<%--                  <div class="bxslider__text-container"> <!-- Thêm thẻ div bao quanh -->--%>
<%--                    <h1 class="bxslider__title">AAAAAAAAAAAAAAAAAA</h1>--%>
<%--                    <p class="bxslider__desc">AAAAAAAAAAAAAAAAAA</p>--%>
<%--                  </div>--%>
<%--                </li>--%>
<%--                <li class="bxslider__item">--%>
<%--                  <div class="bxslider__overlay"></div> <!-- Phần tử phủ -->--%>
<%--                  <img src="${pageContext.request.contextPath}/assets/img/1.jpg" alt="" title="Slider caption text" class="bxslider__img"/>--%>
<%--                  <div class="bxslider__text-container"> <!-- Thêm thẻ div bao quanh -->--%>
<%--                    <h1 class="bxslider__title">AAAAAAAAAAAAAAAAAA</h1>--%>
<%--                    <p class="bxslider__desc">AAAAAAAAAAAAAAAAAA</p>--%>
<%--                  </div>--%>
<%--                </li>--%>
              </ul>
            </div>
          </div>
          <div class="content_area">
            <div class="main_content floatleft">
              <div class="left_coloum floatleft">
                <div class="single_left_coloum_wrapper">
                  <h2 class="title">Chính trị</h2>
                  <a class="more" href="#">thêm<i class="fa-solid fa-plus"></i></a>
                  <c:forEach var="article" varStatus="i" items="${listChinhTri}">
                    <div class="single_left_coloum floatleft">
                      <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                      <h3>${article.title}</h3>
                      <p class="truncate_text">
                        ${article.content}
                      </p>
                      <a class="readmore" href="#">read more</a>
                    </div>
                  </c:forEach>
                </div>
                <div class="single_left_coloum_wrapper">
                  <h2 class="title">Thể thao</h2>
                  <a class="more" href="#">thêm<i class="fa-solid fa-plus"></i></a>
                  <div class="single_left_coloum floatleft">
                    <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                    <h3>Nam Định và HAGL chia điểm ở V-League</h3>
                    <p>
                      Gia Lai ĐKVĐ Nam Định cầm bóng vượt trội, tấn công nhiều nhưng chỉ hòa 0-0 trên sân HAGL ở trận đấu sớm nhất vòng 3 V-League 2024-2025, chiều 28/9.
                    </p>
                    <a class="readmore" href="#">read more</a>
                  </div>
                  <div class="single_left_coloum floatleft">
                    <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                    <h3>'Ten Hag không tầm thường vì đã giành hai Cup cho Man Utd'</h3>
                    <p>
                      Anh Trước vòng 6 Ngoại hạng Anh, HLV Ange Postecoglou đánh giá cao Erik ten Hag, tin rằng đồng nghiệp đang làm tốt công việc ở Man Utd.
                    </p>
                    <a class="readmore" href="#">read more</a>
                  </div>
                  <div class="single_left_coloum floatleft">
                    <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                    <h3>Shearer: 'Phong độ của Rashford định đoạt trận Man Utd - Tottenham '</h3>
                    <p>
                      Anh Theo huyền thoại Alan Shearer, nếu thi đấu bùng nổ, Marcus Rashford có thể giúp Man Utd thắng Tottenham ở vòng 6 Ngoại hạng Anh.
                    </p>
                    <a class="readmore" href="#">read more</a>
                  </div>
                </div>
                <div class="single_left_coloum_wrapper gallery">
                  <h2 class="title">Trong nước</h2>
                  <a class="more" href="#">thêm<i class="fa-solid fa-plus"></i></a>
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                </div>
                <div class="single_left_coloum_wrapper single_cat_left">
                  <h2 class="title">Công nghệ</h2>
                  <a class="more" href="#">thêm<i class="fa-solid fa-plus"></i></a>
                  <c:forEach varStatus="i" items="${listCongNghe}" var="article">
                    <div class="single_cat_left_content floatleft">
                      <h3>
                        ${article.title}
                      </h3>
                      <p class="truncate_text">
                        ${article.content}
                      </p>
                      <p class="single_cat_left_content_meta">
                        by <span>${article.user.fullname}</span> | 29 comments
                      </p>
                    </div>
                  </c:forEach>
                </div>
              </div>
              <div class="right_coloum floatright">
                <div class="single_right_coloum">
                  <h2 class="title">Bất động sản</h2>
                  <ul>
                    <c:forEach var="article" varStatus="i" items="${listBatDongSan}">
                      <li>
                        <div class="single_cat_right_content">
                          <h3>
                            ${article.title}
                          </h3>
                          <p class="truncate_text">
                            ${article.content}
                          </p>
                          <p class="single_cat_right_content_meta">
                            <a href="#"><span>read more</span></a> ${article.published_date}
                          </p>
                        </div>
                      </li>
                    </c:forEach>
                  </ul>
                  <a class="popular_more" href="#">thêm<i class="fa-solid fa-plus"></i></a>
                </div>
                <div class="single_right_coloum">
                  <h2 class="title">Liên quan</h2>
                  <c:forEach varStatus="i" var="article" items="${listLienQuan}">
                    <div class="single_cat_right_content editorial">
                      <img src="${article.imageUrl}" alt="" />
                      <h3>
                        ${article.title}
                      </h3>
                    </div>
                  </c:forEach>
                </div>
              </div>
            </div>
            <div class="sidebar floatright">
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
          <div class="content-bottom__list">
            <c:forEach var="article" varStatus="i" items="${listBottom}">
              <div class="content-bottom__item">
                <figure class="content-bottom__img-container">
                  <img class="content-bottom__img" alt="" src="${article.imageUrl}"/>
                </figure>
                <div class="content-bottom__right">
                  <h2 class="content-bottom__title">${article.title}</h2>
                  <p class="content-bottom__desc truncate_text">${article.content}</p>
                </div>
              </div>
            </c:forEach>
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
      <!-- <script type="text/javascript" src="assets/js/jquery-min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="assets/js/selectnav.min.js"></script>
<script type="text/javascript">
  selectnav("nav", {
    label: "-Navigation-",
    nested: true,
    indent: "-",
  });
  selectnav("f_menu", {
    label: "-Navigation-",
    nested: true,
    indent: "-",
  });
  $(".bxslider").bxSlider({
    mode: "fade",
    captions: true,
  });
</script> -->
    <div class="form__container form__container--dangky">
      <form action="../asm/form" method="POST" class="form" id="form-dang-ky">
        <h3 class="heading">Đăng ký</h3>

        <div class="spacer"></div>

        <div class="form-group">
          <label for="fullname" class="form-label">Tên đầy đủ</label>
          <!-- <div> -->
          <!-- <div> -->
          <input
                  id="fullname"
                  name="fullname"
                  type="text"
                  placeholder="VD: Sơn Đặng"
                  class="form-control"
          />
          <!-- </div> -->
          <!-- </div> -->
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="email" class="form-label">Email</label>
          <input
                  id="email"
                  name="email"
                  type="text"
                  placeholder="VD: email@domain.com"
                  class="form-control"
          />
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="password" class="form-label">Mật khẩu</label>
          <input
                  id="password"
                  name="password"
                  type="password"
                  placeholder="Nhập mật khẩu"
                  class="form-control"
          />
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="password_confirmation" class="form-label"
          >Nhập lại mật khẩu</label
          >
          <input
                  id="password_confirmation"
                  name="password_confirmation"
                  placeholder="Nhập lại mật khẩu"
                  type="password"
                  class="form-control"
          />
          <span class="form-message"></span>
        </div>

        <button type="submit" class="form-submit" value="register" name="action">Đăng ký</button>
      </form>
    </div>

    <div class="form__container form__container--dangnhap">
      <form action="../asm/form" method="POST" class="form" id="form-dang-nhap">
        <h3 class="heading">Đăng nhập</h3>

        <div class="spacer"></div>

        <div class="form-group">
          <label for="email" class="form-label">Email</label>
          <input
                  id="email-signin"
                  name="email"
                  type="text"
                  placeholder="VD: email@domain.com"
                  class="form-control"
          />
          <span class="form-message"></span>
        </div>

        <div class="form-group">
          <label for="password" class="form-label">Mật khẩu</label>
          <input
                  id="password-signin"
                  name="password"
                  type="password"
                  placeholder="Nhập mật khẩu"
                  class="form-control"
          />
          <span class="form-message"></span>
        </div>

        <button class="form-submit">Đăng nhập</button>
      </form>
    </div>
    <script src="${pageContext.request.contextPath}/views/js/validator.js?v=1.0"></script>
    <script src="${pageContext.request.contextPath}/views/js/validate-form.js?v=1.0"></script>
    <script src="${pageContext.request.contextPath}/views/js/index.js?v=1.0"></script>
    </body>
  </html>
</html>
