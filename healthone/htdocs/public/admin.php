<?php
    global $params;

    if(!isAdmin()){
        logout();
        header("Location: /home");
    } else {
        switch($params[2]){
            case 'home':
                include_once "../Templates/admin/home.php";
            break;
            case 'beheer':
                $products=getAllProducts();
                include_once "../Templates/admin/beheer.php";
            break;
            case 'add':
                $categories = getCategories();
                include_once "../Templates/admin/add.php";
            break;
            case 'delete':
                $product = getProduct($_GET['id']);
                unlink('img/' . $product->picture);
                deleteProduct($_GET['id']);
                $products = getAllProducts();
                header("Location: /admin/beheer");
            break;
            default:
                include_once "../Templates/admin/home.php";
            break;
        }
    }
?>