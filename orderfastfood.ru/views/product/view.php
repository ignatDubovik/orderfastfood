<?php include ROOT . '/views/layouts/header.php'; ?>

<section>
  
    <div class="container">
        <div class="row">
            <!--
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Каталог</h2>
                    <div class="panel-group category-products">
                        <?php foreach ($categories as $categoryItem): ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="/category/<?php echo $categoryItem['id'];?>">
                                            <?php echo $categoryItem['name'];?>
                                        </a>
                                    </h4>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
-->
  <!--          <div class="col-sm-9 padding-right">    -->
                <div class="product-details"><!--product-details-->
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="view-product">
                                <img src="<?php echo Product::getImage($product['id']); ?>" alt="" />
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="product-information"><!--/product-information-->
                                <img src="/template/images/product-details/new.jpg" class="newarrival" alt="" />
                                <h2><?php echo $product['name'];?></h2>                              
                                <span>
                                    <span>BYN <?php echo $product['price'];?></span>
                                  <!--  <label>Количество:</label>
                                    <input type="text" value="1" />    -->                                                                                            
                               <!--     <a class="btn btn-fefault cart">                                       
                                        <i class="fa fa-shopping-cart"></i>
                                        В корзину
                                    </a>    -->
                                    
                                   
                                </span>
                                 <a href="#" data-id="<?php echo $product['id'];?>"
                                           class="btn btn-default add-to-cart">
                                            <i class="fa fa-shopping-cart"></i>В корзину
                                        </a>
                            <div class="row">                                
                                <div class="col-sm-12">
                                    <h5>Описание товара</h5>
                                    <?php echo $product['description'];?>
                                </div>
                            </div>
                              
                            </div><!--/product-information-->
                        </div>
                    </div>

                </div><!--/product-details-->

            </div>
        </div>
    </div>
</section>

<?php include ROOT . '/views/layouts/footer.php'; ?>