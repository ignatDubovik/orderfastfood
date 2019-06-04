<?php

class ConstructorController
{
    public function actionCreate()
    {
        $db = Db::getConnection();
       
            $options['name'] = $_POST['name'];
            $options['code'] = $_POST['code'];
            $options['price'] = $_POST['price'];
            $options['category_id'] = $_POST['category_id'];
            $options['availability'] = $_POST['availability'];
            $options['description'] = $_POST['description'];
            $options['is_new'] = $_POST['is_new'];
            $options['is_recommended'] = $_POST['is_recommended'];
            $options['status'] = $_POST['status'];

(Product::updateProductById('25', $options));
        
    }

    /**
     * Action для главной страницы
     */
    public function actionIndex()
    {
        // Список категорий для левого меню
        // Подключаем вид
        $ingredients = array();
        $ingredients = Constructor::getIngredientsList();


        require_once(ROOT . '/views/constructor/index.php');
        return true;
    }
    
    /**
     * Action для страницы "О магазине"
     */
    public function actionAbout()
    {
        // Подключаем вид
        require_once(ROOT . '/views/constructor/about.php');
        return true;
    }

}
