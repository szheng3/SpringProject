<%--
  Author: Shuai Zheng
  Date: 4/22/17
  Time: 2:39 PM
--%>
<%@ page language="java" contentType="text/html; charset = gb2312" pageEncoding="gb2312" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


<!-- ===================================
MAIN SLIDER
==================================== -->

<section class="slider-pro clean-slider" id="clean-slider">
    <div class="sp-slides">

        <!-- Slides -->
        <div class="sp-slide clean-main-slides">
            <div class="clean-img-overlay"></div>

            <img class="sp-image" src="<c:url value='/static/images/slider/1.jpg' />" alt="Slider 1"/>


            <h1 class="sp-layer clean-slider-text-big"
                data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500"
                data-hide-delay="200">
                <span class="clean-color-contras">CLEAN</span> - Slider Responsive HTML Template
            </h1>
            <p class="sp-layer"
               data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200"
               data-show-transition="left" data-hide-transition="down">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            </p>

        </div>
        <!-- Slides End -->

        <!-- Slides -->
        <div class="sp-slide clean-main-slides">
            <div class="clean-img-overlay"></div>
            <img class="sp-image" src="<c:url value='/static/images/slider/2.jpg' />" alt="Slider 2"/>

            <h1 class="sp-layer clean-slider-text-big"
                data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500"
                data-hide-delay="200">
                <span class="clean-color-contras">CLEAN</span> - Slider Responsive HTML Template
            </h1>

            <p class="sp-layer"
               data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200"
               data-show-transition="left" data-hide-transition="down">
                Lorem ipsum dolor sit amet, consectetur adipisicing.
            </p>
        </div>
        <!-- Slides End -->

        <!-- Slides -->
        <div class="sp-slide clean-main-slides">
            <div class="clean-img-overlay"></div>

            <img class="sp-image" src="<c:url value='/static/images/slider/3.jpg' />" alt="Slider 3"/>

            <h1 class="sp-layer clean-slider-text-big"
                data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500"
                data-hide-delay="200">
                <span class="clean-color-contras">CLEAN</span> - Slider Responsive HTML Template
            </h1>

            <p class="sp-layer"
               data-position="center" data-vertical="15%" data-show-delay="1000" data-hide-delay="200"
               data-show-transition="left" data-hide-transition="down">
                Lorem ipsum dolor sit amet, consectetur adipisicing.
            </p>

        </div>
        <!-- Slides End -->

    </div>
</section>


<!-- ===================================
ABOUT SECTION
==================================== -->
<section id="about" class="clean-section-wrapper background-one">
    <div class="container">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">ABOUT OFFERS</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet,
                    consectetur adipisicing elit. Officia voluptas voluptatem est nobis quibusdam, laboriosam ipsam
                    porro nesciunt quae officiis rem deserunt, nisi magni unde ipsa labore! Maiores, necessitatibus,
                    facilis!</p>
            </div>
            <!-- Section Header End -->

            <!-- What We Do -->
            <div class="clean-what-we-do">

                <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceInLeft">
                    <div class="clean-icon">
                        <i class="fa fa-html5"></i>
                    </div>
                    <h3>HTML TEMPLATE</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id voluptatibus placeat vel minima quia
                        earum eaque repellendus odio beatae suscipit.</p>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceIn" data-wow-delay=".5s">
                    <div class="clean-icon">
                        <i class="fa fa-css3"></i>
                    </div>
                    <h3>CSS3</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum, nostrum animi est error facere
                        ipsum laboriosam, rem modi totam earum.</p>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceIn" data-wow-delay=".5s">
                    <div class="clean-icon">
                        <i class="fa fa-laptop"></i>
                    </div>
                    <h3>Responsive TEMPLATE</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae laudantium, aperiam!
                        Impedit nam atque reiciendis itaque, ab in vitae sit.</p>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceInRight" data-wow-delay=".5s">
                    <div class="clean-icon">
                        <i class="fa fa-support"></i>
                    </div>
                    <h3>FREE SUPPORT</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur libero vel deserunt nulla
                        voluptatibus consequuntur adipisci quae. Facere, vero!.</p>
                </div>

            </div>
            <!-- What We Do End -->

        </div>
    </div>
</section>


<!-- ===================================
SCREENSHOOT
==================================== -->
<%--<section class="clean-custom-sec clean-section-wrapper background-two">--%>
<%--<div class="container">--%>
<%--<div class="row">--%>
<%--<!-- Section Header -->--%>
<%--<div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">--%>
<%--<h1><span class="clean-color-contras">SCREENSHOOT</span></h1>--%>
<%--<div class="clean-line"></div>--%>
<%--<p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">`Lorem ipsum dolor sit amet,--%>
<%--consectetur adipisicing elit. Repellat at, totam, nam aspernatur voluptatum nostrum officiis--%>
<%--deserunt nisi quibusdam ipsam?</p>--%>
<%--</div>--%>
<%--<!-- Section Header End -->--%>

<%--<div class="col-md-6 col-sm-6 col-xs-12 clean-custom-sec-img wow bounceInLeft">--%>
<%--<img src="<c:url value='/static/images/custom.jpg' />" alt="Custom Image">--%>

<%--</div>--%>

<%--<div class="col-md-6 col-sm-6 col-xs-12 clean-custom-sec-text wow bounceInRight">--%>
<%--<h3>Lorem ipsum dolor sit amet.</h3>--%>
<%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam aut tenetur, amet earum quia--%>
<%--eligendi obcaecati. Repudiandae id illum, vero iste enim reprehenderit quaerat, harum pariatur ipsa--%>
<%--nulla tempora ex ratione illo assumenda libero ea, delectus vitae, expedita optio porro.</p>--%>

<%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam aut tenetur, amet earum quia--%>
<%--eligendi obcaecati. Repudiandae id illum, vero iste enim reprehenderit quaerat, harum pariatur ipsa--%>
<%--nulla tempora ex ratione illo assumenda libero ea, delectus vitae, expedita optio porro.</p>--%>

<%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam aut tenetur, amet earum quia--%>
<%--eligendi obcaecati. Repudiandae id illum, vero iste enim reprehenderit quaerat, harum pariatur ipsa--%>
<%--nulla tempora ex ratione illo assumenda libero ea, delectus vitae, expedita optio porro.</p>--%>


<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>


<!-- ===================================
FEATURED WORK SECTION
==================================== -->
<section id="featured-works" class="clean-section-wrapper background-two">
    <!-- Container -->
    <div class="container">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">FEATURED WORK</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet,
                    consectetur adipisicing elit. Magnam itaque enim aliquid praesentium odio dolorum sunt. Aperiam
                    delectus, eligendi assumenda!</p>
            </div>
            <!-- Section Header End -->

        </div>
    </div>
    <!-- Container End -->

    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" title="��վģ��">��վģ��</a></div>

    <!-- Featured Works Slider -->
    <div class="container-fluid">
        <div class="row-fluid">

            <div class="clean-portfolio-work-slider-section wow fadeIn" data-wow-duration="2s">
                <div id="featured-work-slider" class="owl-carousel clean-portfolio-works-slider">

                    <!-- Work 1 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/1.png' />" alt="Feature Work 1">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/1.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 1 End -->

                    <!-- Work 2 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/2.png' />" alt="Feature Work 2">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/2.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 2 End -->

                    <!-- Work 3 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/3.png' />" alt="Feature Work 3">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/3.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 3 End -->

                    <!-- Work 4 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/4.png' />" alt="Feature Work 4">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/4.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 4 End -->

                    <!-- Work 5 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/5.png' />" alt="Feature Work 5">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/5.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 5 End -->

                    <!-- Work 6 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/6.png' />" alt="Feature Work 6">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/6.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>
                        </div>

                    </div>
                    <!-- Work 6 End -->

                    <!-- Work 7 -->
                    <div class="clean-portfolio-work-item">

                        <img src="<c:url value='/static/images/featured-work/7.png' />" alt="Feature Work 7">
                        <div class="clean-port-work-details">
                            <ul class="clean-work-meta">
                                <li class="clean-lighbox"><a href="<c:url value='/static/images/featured-work/7.png' />"
                                                             class="clean-featured-work-img"><i
                                        class="fa fa-cog"></i></a></li>
                            </ul>

                        </div>

                    </div>
                    <!-- Work 7 End -->

                </div>
            </div>
        </div>
    </div>
    <!-- Featured Works Slider -->

</section>


<!-- ===================================
OFFER SECTION
==================================== -->
<section id="offer" class="clean-section-wrapper clean-offer-section  background-one">
    <div class="container">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">FEATURES</span></h1>
                <div class="clean-line"></div>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet,
                    consectetur adipisicing elit. Delectus tempore voluptatem dolor cum autem qui maiores esse sit, vel
                    voluptate.</p>
            </div>
            <!-- Section Header End -->

            <!-- Services -->
            <div class="clean-service-wrapper">
                <div class="col-md-4 col-sm-4 col-xs-12 wow bounceInLeft">

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-html5"></i>
                        <h3>HTML5</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-css3"></i>
                        <h3>CSS3</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-jsfiddle"></i>
                        <h3>CLEAN CODE</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                </div>

                <div class="col-md-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s">

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-laptop"></i>
                        <h3>RESPONSIVE</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-cog"></i>
                        <h3>EASY TO EDIT</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-star"></i>
                        <h3>FONT AWESOME</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                </div>

                <div class="col-md-4 col-sm-4 col-xs-12 wow bounceInRight">

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-support"></i>
                        <h3>FREE SUPPORT</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-arrow-up"></i>
                        <h3>FREE UPDATE</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                    <div class="clean-blurb-icon-only">
                        <i class="fa fa-play"></i>
                        <h3>AND MORE</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi tempora quis numquam odio.
                            Asperiores perspiciatis maiores voluptas, velit similique placeat.</p>
                    </div>

                </div>
                <!-- Services End -->

            </div>
        </div>
    </div>
</section>


<!-- ===================================
PRICING TABLE SECTION
==================================== -->
<%--<section id="pricing" class="clean-pricing-section">--%>
<%--<div class="container">--%>
<%--<div class="row">--%>

<%--<!-- Section Header -->--%>
<%--<div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">--%>
<%--<h1><span class="clean-color-contras">PRICE</span></h1>--%>
<%--<div class="clean-line"></div>--%>
<%--<p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae dolorem nostrum pariatur consequatur aut est aspernatur reiciendis veniam delectus saepe.</p>--%>
<%--</div>--%>
<%--<!-- Section Header End -->--%>

<%--<div class="clean-pricing-wrapper">--%>

<%--<!-- Plans -->--%>
<%--<div class="col-md-4 col-sm-4 col-xs-12 clean-pricing-plans wow bounceInLeft">--%>
<%--<div class="clean-pricing-titles">--%>
<%--<h2>Free</h2>--%>
<%--<p><span>$0</span>Month</p>--%>
<%--</div>--%>
<%--<div class="clean-pricing-service-name">--%>
<%--<ul>--%>
<%--<li>HTML5 Template</li>--%>
<%--<li>CSS valid</li>--%>
<%--<li>Responsive Theme</li>--%>
<%--<li>Easy edit</li>--%>
<%--<li>Support</li>--%>
<%--</ul>--%>
<%--</div>--%>

<%--<a href="" class="clean-signup-btn">SIGN UP</a>--%>
<%--</div>--%>
<%--<!-- Plans End -->--%>

<%--<!-- Plans -->--%>
<%--<div class="col-md-4 col-sm-4 col-xs-12 clean-pricing-plans clean-recommended-pricing wow fadeInUp" data-wow-duration="1s">--%>
<%--<div class="clean-pricing-titles">--%>
<%--<h2>BASIC</h2>--%>
<%--<p><span>$15/</span>Month</p>--%>
<%--</div>--%>
<%--<div class="clean-pricing-service-name">--%>
<%--<ul>--%>
<%--<li>HTML5 Template</li>--%>
<%--<li>CSS valid</li>--%>
<%--<li>Responsive Theme</li>--%>
<%--<li>Easy edit</li>--%>
<%--<li>Support</li>--%>
<%--</ul>--%>
<%--</div>--%>

<%--<a href="" class="clean-signup-btn">SIGN UP</a>--%>
<%--</div>--%>
<%--<!-- Plans End -->--%>

<%--<!-- Plans -->--%>
<%--<div class="col-md-4 col-sm-4 col-xs-12 clean-pricing-plans wow bounceInRight">--%>
<%--<div class="clean-pricing-titles">--%>
<%--<h2>PREMIUM</h2>--%>
<%--<p><span>$45/</span>Month</p>--%>
<%--</div>--%>
<%--<div class="clean-pricing-service-name">--%>
<%--<ul>--%>
<%--<li>HTML5 Template</li>--%>
<%--<li>CSS valid</li>--%>
<%--<li>Responsive Theme</li>--%>
<%--<li>Easy edit</li>--%>
<%--<li>Support</li>--%>
<%--</ul>--%>
<%--</div>--%>

<%--<a href="" class="clean-signup-btn">SIGN UP</a>--%>
<%--</div>--%>
<%--<!-- Plans End -->--%>

<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>


<!-- ===================================
TESTIMONIALS SECTION
==================================== -->
<section id="testimonial" class="clean-testimonial-section background-two">

    <div class="clean-parallax-overlay"></div>

    <div class="clean-testimonial-wrapper wow bounceIn">
        <div class="container">
            <div class="row">

                <i class="icon-bubbles comment-icon"></i>

                <!-- Testimonial Slider -->
                <div id="clean-testimonial" class="owl-carousel clean-testimonial">

                    <!-- Slides -->

                    <div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">
                        <div class="clean-member-img-wrapper">
                            <img src="<c:url value='/static/images/testimonial/1.png' />" alt="Team Member 2">

                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus mollitia, dolorem eos nisi
                            totam perspiciatis debitis nemo veritatis repellat impedit provident, sapiente magni
                            voluptatem! Voluptas veritatis velit, saepe incidunt modi.</p>
                        <p class="clean-client-info">John Doe</p>
                    </div>
                    <!-- Slides End -->

                    <!-- Slides -->
                    <div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">
                        <div class="clean-member-img-wrapper">
                            <img src="<c:url value='/static/images/testimonial/2.png' />" alt="Team Member 2">
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eum quasi illum, impedit
                            perspiciatis saepe officiis dolore alias expedita et obcaecati doloremque, quis ipsam
                            aperiam, eveniet eligendi at adipisci quisquam.</p>
                        <p class="clean-client-info">Pirlo Doe</p>
                    </div>
                    <!-- Slides End -->

                    <!-- Slides -->
                    <div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">
                        <div class="clean-member-img-wrapper">
                            <img src="<c:url value='/static/images/testimonial/3.png' />" alt="Team Member 2">
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, aut blanditiis. Commodi
                            iste, dignissimos laboriosam magni mollitia perferendis accusantium quis, totam quaerat,
                            reprehenderit officia explicabo. Cum cupiditate error temporibus blanditiis.</p>
                        <p class="clean-client-info">Jin Doe</p>
                    </div>
                    <!-- Slides End -->

                </div>
                <!-- Testimonial Slider End -->

            </div>
        </div>
    </div>
</section>

<!-- ===================================
CONTACT SECTION
==================================== -->
<%--<section id="contact" class="clean-section-wrapper clean-contact-section background-one" data-stellar-background-ratio="0.5">--%>
<%--<div class="clean-parallax-overlay"></div>--%>
<%--<div class="container">--%>
<%--<div class="row">--%>

<%--<!-- Section Header -->--%>
<%--<div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown clean-section-header-parallax">--%>
<%--<h1><span class="clean-color-contras">CONTACT US</span></h1>--%>
<%--<div class="clean-line"></div>--%>
<%--<p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum error ab rem atque impedit soluta quidem, deleniti culpa. Accusantium placeat commodi harum, aut cumque numquam molestiae vel ut eum consequuntur.</p>--%>
<%--</div>--%>
<%--<!-- Section Header End -->--%>

<%--<div class="clean-contact-details">--%>

<%--<!-- Contact Form -->--%>
<%--<div class="col-md-12 col-sm-12 col-xs-12 clean-contact-form wow bounceInRight">--%>
<%--<div id="contact-result"></div>--%>
<%--<div id="contact-form">--%>
<%--<div class="clean-input-name clean-input-fields">--%>
<%--<label for="name">Name*</label>--%>
<%--<input type="text" name="name" id="name" required>--%>
<%--</div>--%>

<%--<div class="clean-input-email clean-input-fields">--%>
<%--<label for="email">Email*</label>--%>
<%--<input type="email" name="email" id="email" required>--%>
<%--</div>--%>

<%--<div class="clean-input-message clean-input-fields">--%>
<%--<label for="message">Message</label>--%>
<%--<textarea name="message" id="message" cols="30" rows="10"></textarea>--%>
<%--</div>--%>

<%--<input type="submit" value="SEND MESSAGE" id="submit-btn">--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- Contact Form End -->--%>

<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>
