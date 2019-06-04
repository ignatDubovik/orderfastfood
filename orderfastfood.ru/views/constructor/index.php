<?php include ROOT . '/views/layouts/header.php'; ?>

<section>
     
    <div class="container" >
        <div class="row">

           <div class="padding-right">   
                <div class="features_items">
                    <h2 class="title text-center">Конструктор</h2>
                  <div class="container" >
                    
                  
                          
                               
   <p>Выберите необходимые ингредиенты: </p>
   
   
   
    <?php  foreach ($ingredients as $ingredientsItem): ?>
<div id="calc0">
         <p><input type="checkbox" name="ingredient" 
              
            value="<?php echo $ingredientsItem['price']; ?>"
            id="<?php echo $ingredientsItem['name']; ?>"> 
            <label for="<?php echo $ingredientsItem['name']; ?><?php echo $ingredientsItem['price']; ?>"><?php echo $ingredientsItem['name']; ?> - <?php echo $ingredientsItem['price']; ?>p.</label></p>  </div>                                            
    <?php endforeach; ?>
     
<!--<body onload="document.getElementById('aa').click(); if(CheckValid()) submit();">-->
<script type="text/javascript">
function submit0()
{
        document.getElementById('frm').submit();

}   
       

</script>

<form id="frm" method=post>
    
    <div id="summ0" >
   
</div>
<input id=myinput  name="peremennaya" value="0" >
<input type="button" name="btn" value="Подсчитать" onclick="calc0()" />
<p></p>
<p><button type="submit" style="height:38px; " ><a id="aa" class="btn btn-default add-to-cart" data-id="24" onclick="submit0()" >
            <i class="fa fa-shopping-cart"></i>В корзину</a>
    </button>
     
     </p>
</form>
                  
    <?php 

    $db = Db::getConnection();
    
   

if (!empty($_POST["peremennaya"])) {
     $per=$_POST['peremennaya'];  
} else {  
    $per='0';
}
 
 
 
            $options['name'] = 'Ингредиенты для бургера';
            $options['code'] = '1';
            $options['price'] = $per;
            $options['category_id'] = '1';
            $options['availability'] = '1';
            $options['description'] = 'wwwwwwwwwwwwwwwwww';
            $options['is_new'] = '0';
            $options['is_recommended'] = '1';
            $options['status'] = '1';
(Product::updateProductById('24', $options));

    
    ?>



   
     
    


   

   
    <!--              <?php foreach ($ingredients as $ingredientsID): ?>
                   
                                       
                                       
                                        
                                        <a href="#" data-id="<?php echo $ingredientsID['id'];?>"
                                           class="btn btn-default add-to-cart">
                                            <i class="fa fa-shopping-cart"></i>В корзину
                                        </a>
                               
                    <?php endforeach;?>     -->
                    
                    <script type="text/javascript">
function calc0()
{
    var summ = 0;
        $('#calc0 input:checked').each(function(){
        summ += parseFloat($(this).val());
    });
    //$('#summ0').html(summ);
    document.getElementById("myinput").value=summ;
    
}
</script>

   
   
                            
                        
                    
                </div>               
            </div>
         </div>
    </div>
    
</section>

<?php include ROOT . '/views/layouts/footer.php'; ?>
