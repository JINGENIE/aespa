<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- center 시작 구간 -->
<!-- 상단 슬라이드  이미지 구간 -->
<div class="hero-slider">
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/img/center_jewelry.png);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-left">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">Earrings</p>
          <h4 style="color: whitesmoke" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5"> 시선을 사로잡는 방법<br>Aespa 이어링으로 모두에게 기분좋은 관심을 즐기세요.</h4><br>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">자세히보기</a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/img/center_bracelet.png);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-center">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">Bracelets</p>
          <h4 style="color: whitesmoke" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">클래식한 실루엣과 디자인으로 상상력 그 너머의 세계<br>섬세한 스타일로 예측할 수 없는 매력을 연출하세요.</h4><br>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">자세히보기</a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(/img/center_watch.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-right">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">Wathchs</p>
          <h4 style="color: whitesmoke" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">150여 년에 걸친 정밀성과 파인 주얼리 컬렉션으로 <br>하나뿐인 시계를 손목에서 경험해 보세요.</h4><br>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop.html">자세히보기</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!--
/**
* 화면 : login.js
* 내용 : login 기능 구현 중
* 작성자 : 정인보
* 작성일 : 5.11
*/
-->
<section class="product-category section">
  <%--  중간 이미지 구간 (3개)   --%>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="title text-center">
          <h2>Product Category</h2>
        </div>
      </div>
      <div class="col-md-6">
        <%--  중간 좌측 : 1번 이미지 --%>
        <div class="category-box">
          <a href="#!">
            <img src="/img/center_wedding.jpg" alt="" />
            <div class="content">
              <h3>Jewellery</h3>
              <p>Shop New Season Clothing</p>
            </div>
          </a>
        </div>
        <div class="category-box">
          <a href="#!">
            <img src="/img/center_earring.jpg" alt="" />
            <div class="content">
              <h3 style="color : whitesmoke">Smart Casuals</h3>
              <p>Get Wide Range Selection</p>
            </div>
          </a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="category-box category-box-2">
          <a href="#!">
            <img src="/img/center_wedding2.jpg" alt="" />
            <div class="content">
              <h3>Wedding</h3>
              <p>Special Design Comes First</p>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div> <%--  중간 이미지 구간 끝. (3개)   --%>
</section>
<!-- 하단 상품 보기 -->
<section class="products section bg-gray">
  <div class="container">
    <div class="row">
      <div class="title text-center">
        <h2>Trendy Products</h2>
      </div>
    </div>
    <div class="row">

      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <span class="bage">Sale</span>
            <img class="img-responsive" src="/images/shop/products/product-1.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#!" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Reef Boardsport</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-2.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-3.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>

          <div class="product-content">
            <h4><a href="product-single.html">Strayhorn SP</a></h4>
            <p class="price">$230</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-4.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Bradley Mid</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-5.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-6.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <span class="bage">Sale</span>
            <img class="img-responsive" src="/images/shop/products/product-7.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-8.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-item">
          <div class="product-thumb">
            <img class="img-responsive" src="/images/shop/products/product-9.jpg" alt="product-img" />
            <div class="preview-meta">
              <ul>
                <li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
                </li>
                <li>
                  <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                </li>
                <li>
                  <a href="#!"><i class="tf-ion-android-cart"></i></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="product-content">
            <h4><a href="product-single.html">Rainbow Shoes</a></h4>
            <p class="price">$200</p>
          </div>
        </div>
      </div>

      <!-- Modal -->
      <div class="modal product-modal fade" id="product-modal">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <i class="tf-ion-close"></i>
        </button>
        <div class="modal-dialog " role="document">
          <div class="modal-content">
            <div class="modal-body">
              <div class="row">
                <div class="col-md-8 col-sm-6 col-xs-12">
                  <div class="modal-image">
                    <img class="img-responsive" src="/images/shop/products/modal-product.jpg" alt="product-img" />
                  </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="product-short-details">
                    <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                    <p class="product-price">$200</p>
                    <p class="product-short-description">
                      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
                    </p>
                    <a href="cart.html" class="btn btn-main">Add To Cart</a>
                    <a href="product-single.html" class="btn btn-transparent">View Product Details</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div><!-- /.modal -->

    </div>
  </div>
</section>


<!--
Start Call To Action
==================================== -->
<section class="call-to-action bg-gray section">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <div class="title">
          <h2>SUBSCRIBE TO NEWSLETTER</h2>
          <p>단 한 순간, 가장 아름다운 날의 기억은 반짝임을 아는 것부터 시작됩니다.<br>  AESPA에서 가공하는 다이아몬드 원석이 어떤 광산 및 공급처에서 소싱되었는지 100% 추적할 수 있습니다. </p>
        </div>
        <div class="col-lg-6 col-md-offset-3">
          <div class="input-group subscription-form">
            <input type="text" class="form-control" placeholder="Enter Your Email Address">
            <span class="input-group-btn">
				        <button class="btn btn-main" type="button">Subscribe Now!</button>
				      </span>
          </div><!-- /input-group -->
        </div><!-- /.col-lg-6 -->

      </div>
    </div> 		<!-- End row -->
  </div>   	<!-- End container -->
</section>   <!-- End section -->

<section class="section instagram-feed">
  <div class="container">
    <div class="row">
      <div class="title">
        <h2>View us on instagram</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-12">
        <div class="instagram-slider" id="instafeed" data-accessToken="IGQVJYeUk4YWNIY1h4OWZANeS1wRHZARdjJ5QmdueXN2RFR6NF9iYUtfcGp1NmpxZA3RTbnU1MXpDNVBHTzZAMOFlxcGlkVHBKdjhqSnUybERhNWdQSE5hVmtXT013MEhOQVJJRGJBRURn"></div>
      </div>
    </div>
  </div>
</section>  <%-- center 끝. --%>