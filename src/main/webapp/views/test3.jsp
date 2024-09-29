<%-- Created by IntelliJ IDEA. User: Ca1 Date: 9/28/2024 Time: 3:03 PM To change
this template use File | Settings | File Templates. --%> <%@ page
contentType="text/html;charset=UTF-8" language="java" %>
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
        HREF="${pageContext.request.contextPath}/assets/style/style.css"
        TYPE="text/css"
      />
      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
      />
    </head>
    <body>
    <div class="body_wrapper" style="background-image: url('${pageContext.request.contextPath}/assets/img/site_bg.png'); background-repeat: repeat;">
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
                <li><a href="index.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">Subscribe</a></li>
                <li><a href="#">Login</a></li>
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
                  <a class="more" href="#">more</a>
                  <div class="single_left_coloum floatleft">
                    <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                    <h3>Lãnh tụ tối cao Iran kêu gọi 'sát cánh cùng Hezbollah'</h3>
                    <p>
                      Lãnh tụ Iran Khamenei chỉ trích "chính sách thiển cận" của Israel, kêu gọi các nhóm Hồi giáo sát cánh cùng Hezbollah sau vụ hạ sát thủ lĩnh Hassan Nasrallah.
                    </p>
                    <a class="readmore" href="#">read more</a>
                  </div>
                  <div class="single_left_coloum floatleft">
                    <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                    <h3>Biển người Iran, Yemen biểu tình phản đối Israel</h3>
                    <p>
                      Hàng chục nghìn người biểu tình ở Iran và Yemen, lên án các cuộc tấn công của Israel vào Lebanon và Gaza, mà họ mô tả là "tắm máu".
                    </p>
                    <a class="readmore" href="#">read more</a>
                  </div>
                  <div class="single_left_coloum floatleft">
                    <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                    <h3>Chuyến công tác Mỹ của Tổng Bí thư, Chủ tịch nước 'đạt tất cả mục tiêu'</h3>
                    <p>

                      Phó thủ tướng Bùi Thanh Sơn cho biết chuyến công tác của Tổng Bí thư, Chủ tịch nước Tô Lâm tại Mỹ đạt được ở mức cao tất cả mục tiêu, nhiệm vụ đề ra.
                    </p>
                    <a class="readmore" href="#">read more</a>
                  </div>
                </div>
                <div class="single_left_coloum_wrapper">
                  <h2 class="title">Thể thao</h2>
                  <a class="more" href="#">more</a>
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
                  <a class="more" href="#">more</a>
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                  <img src="https://i1-vnexpress.vnecdn.net/2024/09/28/da-i-ho-i-do-ng-1-1173-1727227-1820-5651-1727516778.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=hl7RSYXW9tl2QncWCZfzQA" alt="" />
                </div>
                <div class="single_left_coloum_wrapper single_cat_left">
                  <h2 class="title">Công nghệ</h2>
                  <a class="more" href="#">more</a>
                  <div class="single_cat_left_content floatleft">
                    <h3>
                      Bộ đôi Galaxy Tab S10 hỗ trợ AI tạo sinh
                    </h3>
                    <p>
                      Samsung công bố bộ đôi máy tính bảng Galaxy Tab S10+ và Tab S10 Ultra, lần đầu dùng chip Dimensity 9300+ và hỗ trợ AI tạo sinh.
                    </p>
                    <p class="single_cat_left_content_meta">
                      by <span>John Doe</span> | 29 comments
                    </p>
                  </div>
                  <div class="single_cat_left_content floatleft">
                    <h3>
                      Huawei ra bộ đôi đồng hồ Watch GT5
                    </h3>
                    <p>
                      Huawei Watch GT5 gồm hai bản thường và Pro, thiết kế hiện đại, đi kèm nhiều tính năng hỗ trợ sức khỏe và thời lượng pin dài.  47
                    </p>
                    <p class="single_cat_left_content_meta">
                      by <span>John Doe</span> | 29 comments
                    </p>
                  </div>
                  <div class="single_cat_left_content floatleft">
                    <h3>
                      AI Contact Center OmiCX vào top 14 giải pháp đổi mới sáng tạo
                    </h3>
                    <p>
                      Giải pháp AI Contact Center OmiCX của Công ty Cổ phần Minh Phúc Transformation (MP Transformation) nằm trong top 14 giải pháp đổi mới sáng tạo trong lĩnh vực trí tuệ nhân tạo (AI).
                    </p>
                    <p class="single_cat_left_content_meta">
                      by <span>John Doe</span> | 29 comments
                    </p>
                  </div>
                  <div class="single_cat_left_content floatleft">
                    <h3>
                      Tìm hiểu các chính sách và chi phí du học Canada mới nhất
                    </h3>
                    <p>
                      Gặp gỡ trực tiếp với viên chức di trú Canada để được giải đáp các vấn đề visa và du học.
                    </p>
                    <p class="single_cat_left_content_meta">
                      by <span>John Doe</span> | 29 comments
                    </p>
                  </div>
                </div>
              </div>
              <div class="right_coloum floatright">
                <div class="single_right_coloum">
                  <h2 class="title">Bất động sản</h2>
                  <ul>
                    <li>
                      <div class="single_cat_right_content">
                        <h3>
                          Các nước đánh thuế để ngăn đầu cơ nhà đất thế nào
                        </h3>
                        <p>
                          Anh tăng thuế thêm 3% so với bình thường nếu mua nhà thứ hai, còn Singapore áp 20% thuế nếu mua căn thứ hai và 30% cho căn thứ ba.
                        </p>
                        <p class="single_cat_right_content_meta">
                          <a href="#"><span>read more</span></a> 3 hours ago
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="single_cat_right_content">
                        <h3>
                          Cách thiết kế mái nhà phòng mưa bão
                        </h3>
                        <p>
                          Cách thiết kế mái nhà phòng mưa bão
                          Cách thiết kế mái nhà phòng mưa bão
                          Làm sàn mái hai lớp, chọn đúng vật liệu, chống thấm kỹ lưỡng… giúp kéo dài tuổi thọ mái, bảo vệ nhà khỏi ảnh hưởng mưa bão.
                        </p>
                        <p class="single_cat_right_content_meta">
                          <a href="#"><span>read more</span></a> 3 hours ago
                        </p>
                      </div>
                    </li>
                    <li>
                      <div class="single_cat_right_content">
                        <h3>
                          TP HCM đẩy nhanh cấp sổ hồng cho các căn hộ vướng mắc
                        </h3>
                        <p>
                          Từ nay đến hết năm, TP HCM sẽ rà soát các khó khăn và cấp sổ hồng cho người mua nhà tại các dự án đang vướng mắc.
                        </p>
                        <p class="single_cat_right_content_meta">
                          <a href="#"><span>read more</span></a> 3 hours ago
                        </p>
                      </div>
                    </li>
                  </ul>
                  <a class="popular_more" href="#">more</a>
                </div>
                <div class="single_right_coloum">
                  <h2 class="title">editorial</h2>
                  <div class="single_cat_right_content editorial">
                    <img src="images/editorial_img.png" alt="" />
                    <h3>
                      Lorem ipsum dolor sit amet con se cte tur adipiscing elit
                    </h3>
                  </div>
                  <div class="single_cat_right_content editorial">
                    <img src="images/editorial_img.png" alt="" />
                    <h3>
                      Lorem ipsum dolor sit amet con se cte tur adipiscing elit
                    </h3>
                  </div>
                  <div class="single_cat_right_content editorial">
                    <img src="images/editorial_img.png" alt="" />
                    <h3>
                      Lorem ipsum dolor sit amet con se cte tur adipiscing elit
                    </h3>
                  </div>
                  <div class="single_cat_right_content editorial">
                    <img src="images/editorial_img.png" alt="" />
                    <h3>
                      Lorem ipsum dolor sit amet con se cte tur adipiscing elit
                    </h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="sidebar floatright">
              <div class="single_sidebar">
                <img src="images/add1.png" alt="" />
              </div>
              <div class="single_sidebar">
                <div class="news-letter">
                  <h2>Sign Up for Newsletter</h2>
                  <p>Sign up to receive our free newsletters!</p>
                  <form action="#" method="post">
                    <input type="text" value="Name" id="name" />
                    <input type="text" value="Email Address" id="email" />
                    <input type="submit" value="SUBMIT" id="form-submit" />
                  </form>
                  <p class="news-letter-privacy">
                    We do not spam. We value your privacy!
                  </p>
                </div>
              </div>
              <div class="single_sidebar">
                <div class="popular">
                  <h2 class="title">Popular</h2>
                  <ul>
                    <li>
                      <div class="single_popular">
                        <p>Sept 24th 2045</p>
                        <h3>
                          Lorem ipsum dolor sit amet conse ctetur adipiscing
                          elit
                          <a href="#" class="readmore">Read More</a>
                        </h3>
                      </div>
                    </li>
                    <li>
                      <div class="single_popular">
                        <p>Sept 24th 2045</p>
                        <h3>
                          Lorem ipsum dolor sit amet conse ctetur adipiscing
                          elit
                          <a href="#" class="readmore">Read More</a>
                        </h3>
                      </div>
                    </li>
                    <li>
                      <div class="single_popular">
                        <p>Sept 24th 2045</p>
                        <h3>
                          Lorem ipsum dolor sit amet conse ctetur adipiscing
                          elit
                          <a href="#" class="readmore">Read More</a>
                        </h3>
                      </div>
                    </li>
                    <li>
                      <div class="single_popular">
                        <p>Sept 24th 2045</p>
                        <h3>
                          Lorem ipsum dolor sit amet conse ctetur adipiscing
                          elit
                          <a href="#" class="readmore">Read More</a>
                        </h3>
                      </div>
                    </li>
                    <li>
                      <div class="single_popular">
                        <p>Sept 24th 2045</p>
                        <h3>
                          Lorem ipsum dolor sit amet conse ctetur adipiscing
                          elit
                          <a href="#" class="readmore">Read More</a>
                        </h3>
                      </div>
                    </li>
                  </ul>
                  <a class="popular_more">more</a>
                </div>
              </div>
              <div class="single_sidebar">
                <img src="images/add1.png" alt="" />
              </div>
              <div class="single_sidebar">
                <h2 class="title">ADD</h2>
                <img src="images/add2.png" alt="" />
              </div>
            </div>
          </div>
          <div class="footer_top_area">
            <div class="inner_footer_top">
              <img src="images/add3.png" alt="" />
            </div>
          </div>
          <div class="footer_bottom_area">
            <div class="footer_menu">
              <ul id="f_menu">
                <li><a href="#">world news</a></li>
                <li><a href="#">sports</a></li>
                <li><a href="#">tech</a></li>
                <li><a href="#">business</a></li>
                <li><a href="#">Movies</a></li>
                <li><a href="#">entertainment</a></li>
                <li><a href="#">culture</a></li>
                <li><a href="#">Books</a></li>
                <li><a href="#">classifieds</a></li>
                <li><a href="#">blogs</a></li>
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
    </body>
  </html>
</html>
