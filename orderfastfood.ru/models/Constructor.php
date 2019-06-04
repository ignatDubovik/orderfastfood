<?php

class Constructor
{

    /**
     * Returns an array of categories
     */
    public static function getIngredientsList()
    {

        $db = Db::getConnection();

        $ingredientsList = array();

        $result = $db->query('SELECT id, name, price FROM ingredients '
                . 'ORDER BY id ASC');

        $i = 0;
        while ($row = $result->fetch()) {
            $ingredientsList[$i]['id'] = $row['id'];
            $ingredientsList[$i]['name'] = $row['name'];
            $ingredientsList[$i]['price'] = $row['price'];
            $i++;
        }

        return $ingredientsList;
    }
}
