<?php
/**
 * Контроллер CartController
 */
class PayController
{

    /**
     * Action для главной страницы
     */
    public function actionIndex()
    {
        // Список категорий для левого меню
        // Подключаем вид
         $categories = array();
        $categories = Category::getCategoriesList();


        require_once(ROOT . '/views/pay/index.php');
        return true;
    }

    /**
     * Action для страницы "Контакты"
     */
   
    
    /**
     * Action для страницы "О магазине"
     */
    public function actionAbout()
    {
        // Подключаем вид
        require_once(ROOT . '/views/pay/about.php');
        return true;
    }

}
