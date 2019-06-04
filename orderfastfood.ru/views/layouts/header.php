<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>OrderFastfood</title>
        <link href="/template/css/bootstrap.min.css" rel="stylesheet">
        <link href="/template/css/font-awesome.min.css" rel="stylesheet">
        <link href="/template/css/prettyPhoto.css" rel="stylesheet">
        <link href="/template/css/price-range.css" rel="stylesheet">
        <link href="/template/css/animate.css" rel="stylesheet">
        <link href="/template/css/main.css" rel="stylesheet">
        <link href="/template/css/responsive.css" rel="stylesheet">
                
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="/template/images/ico/favicon.ico">
        <!--
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/template/images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/template/images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/template/images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="/template/images/ico/apple-touch-icon-57-precomposed.png"> -->
    </head><!--/head-->

    <body>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> +375 33 635 56 18</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> sdfsgdg@mail.ru</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="/"><img src="/template/images/home/logo.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="/cart">
                                            <i class="fa fa-shopping-cart"></i> Корзина 
                                            (<span id="cart-count"><?php echo Cart::countItems();?></span>)
                                        </a>
                                    </li>
                                    <?php if (User::isGuest()): ?>                                        
                                        <li><a href="/user/login/"><i class="fa fa-lock"></i> Вход</a></li>
                                    <?php else: ?>
                                        <li><a href="/cabinet/"><i class="fa fa-user"></i> Аккаунт</a></li>
                                        <li><a href="/user/logout/"><i class="fa fa-unlock"></i> Выход</a></li>
                                    <?php endif; ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">

                            <nav class="header__top__menu">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li class="li_menu"><a href="/" class="menu">ГЛАВНАЯ</a></li>
                                    <li class="li_menu dropdown"><a href="#" class="menu">МЕНЮ<i class="fa fa-angle-down"></i></a>
                                      <ul role="menu" class="sub-menu">
                                        <?php foreach ($categories as $categoryItem): ?>
                                            <div class="panel-heading">                                                
                                                <a href="/category/<?php echo $categoryItem['id']; ?>">
                                                    <?php echo $categoryItem['name']; ?>
                                                </a>                                                
                                            </div>                                            
                                        <?php endforeach; ?>
                                      </ul>

                                    </li>
                                    <li class="li_menu dropdown"><a href="#" class="menu">КОНСТРУКТОР<i class="fa fa-angle-down"></i></a>
                                      <ul role="menu" class="sub-menu">
                                        <li><a href="/constructor/">Бургера</a></li>
                                      </ul>
                                    </li>
                                    <li class="li_menu"><a href="/pay/" class="menu">ОПЛАТА И ДОСТАВКА</a></li>

                                </ul>
                            </nav>

                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->

        </header><!--/header-->