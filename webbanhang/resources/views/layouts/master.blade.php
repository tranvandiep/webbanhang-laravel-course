<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <link rel="icon" type="image/png" sizes="16x16" href="https://gokisoft.com/uploads/2021/03/s-568-ico-web.jpg">
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <title>{{ $title }}</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="{{ asset('themes/frontend/css/bootstrap.css') }}" />
      <!-- font awesome style -->
      <link href="{{ asset('themes/frontend/css/font-awesome.min.css') }}" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="{{ asset('themes/frontend/css/style.css') }}" rel="stylesheet" />
      <!-- responsive style -->
      <link href="{{ asset('themes/frontend/css/responsive.css') }}" rel="stylesheet" />

      <style type="text/css">
        nav.items-center {
            margin-top: 30px;
            display: flex;
        }

        nav.items-center .justify-between {
            display: none;
        }

        nav.items-center .relative.inline-flex span {
            float: left;
            width: 50px !important;
            height: 45px !important;
            text-align: center;
        }

        nav.items-center svg {
            max-width: 30px !important;
        }

        nav.items-center a {
            color: black !important;
            width: 50px !important;
            height: 45px !important;
            text-align: center;
            float: left;
        }
      </style>

      @yield('css')
   </head>
   <body>
      <div class="{{ $mainClass }}">
         <!-- header section strats -->
         <header class="header_section">
            <div class="container">
               <nav class="navbar navbar-expand-lg custom_nav-container ">
                  <a class="navbar-brand" href="{{ route('home_index') }}"><img width="250" src="{{ asset('themes/frontend/images/logo.png') }}" alt="#" /></a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class=""> </span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav">
                        <li class="nav-item active">
                           <a class="nav-link" href="{{ route('home_index') }}">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="#about">About</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="{{ route('frontend.products') }}">Products</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="{{ route('frontend.news') }}">Blog</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="{{ route('frontend.contact') }}">Contact</a>
                        </li>
                        <li class="nav-item">
                           @if($cartNum > 0)
                              <label class="badge bg-danger" style="position: absolute; top: -2px; color: white">{{ $cartNum }}</label>
                           @endif
                           <a class="nav-link" href="{{ route('frontend.cart') }}">
                              <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background:new 0 0 456.029 456.029;" xml:space="preserve">
                                 <g>
                                    <g>
                                       <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                                          c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                                    </g>
                                 </g>
                                 <g>
                                    <g>
                                       <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                                          C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                                          c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                                          C457.728,97.71,450.56,86.958,439.296,84.91z" />
                                    </g>
                                 </g>
                                 <g>
                                    <g>
                                       <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                                          c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                                    </g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                                 <g>
                                 </g>
                              </svg>
                           </a>
                        </li>
                        <form class="form-inline">
                           <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                           <i class="fa fa-search" aria-hidden="true"></i>
                           </button>
                        </form>
                     </ul>
                  </div>
               </nav>
            </div>
         </header>
         <!-- end header section -->
         @yield('slider')
      </div>
      @yield('main-content')
      <!-- footer start -->
      <footer>
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                   <div class="full">
                      <div class="logo_footer">
                        <a href="#"><img width="210" src="{{ asset('themes/frontend/images/logo.png') }}" alt="#" /></a>
                      </div>
                      <div class="information_f">
                        <p><strong>ADDRESS:</strong> 28 White tower, Street Name New York City, USA</p>
                        <p><strong>TELEPHONE:</strong> +84 762 103 668</p>
                        <p><strong>EMAIL:</strong> support@gokisoft.com</p>
                      </div>
                   </div>
               </div>
               <div class="col-md-8">
                  <div class="row">
                  <div class="col-md-7">
                     <div class="row">
                        <div class="col-md-6">
                     <div class="widget_menu">
                        <h3>Our Pages</h3>
                        <ul>
                           <li><a href="{{ route('home_index') }}">Home</a></li>
                           <li><a href="{{ route('frontend.products') }}">Products</a></li>
                           <li><a href="{{ route('frontend.news') }}">News</a></li>
                           <li><a href="{{ route('frontend.contact') }}">Contact</a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-md-6">
                     <div class="widget_menu">
                        <h3>Latest News</h3>
                        <ul>
                           <li><a href="#">Account</a></li>
                           <li><a href="#">Checkout</a></li>
                           <li><a href="#">Login</a></li>
                           <li><a href="#">Register</a></li>
                           <li><a href="#">Shopping</a></li>
                           <li><a href="#">Widget</a></li>
                        </ul>
                     </div>
                  </div>
                     </div>
                  </div>     
                  <div class="col-md-5">
                     <div class="widget_menu">
                        <h3>Newsletter</h3>
                        <div class="information_f">
                          <p>Subscribe by our newsletter and get update protidin.</p>
                        </div>
                        <div class="form_sub">
                           <form>
                              <fieldset>
                                 <div class="field">
                                    <input type="email" placeholder="Enter Your Mail" name="email" />
                                    <input type="submit" value="Subscribe" />
                                 </div>
                              </fieldset>
                           </form>
                        </div>
                     </div>
                  </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- footer end -->
      <div class="cpy_">
         <p class="mx-auto">© 2021 All Rights Reserved By <a href="https://gokisoft.com">GokiSoft.com</a>
         </p>
      </div>
      <!-- jQery -->
      <script src="{{ asset('themes/frontend/js/jquery-3.4.1.min.js') }}"></script>
      <!-- popper js -->
      <script src="{{ asset('themes/frontend/js/popper.min.js') }}"></script>
      <!-- bootstrap js -->
      <script src="{{ asset('themes/frontend/js/bootstrap.js') }}"></script>
      <!-- custom js -->
      <script src="{{ asset('themes/frontend/js/custom.js') }}"></script>

      @yield('js')
   </body>
</html>