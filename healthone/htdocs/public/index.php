<?php
require '../Modules/Categories.php';
require '../Modules/Products.php';
require '../Modules/Database.php';
require '../Modules/Review.php';
require '../Modules/Login.php';

$request = $_SERVER['REQUEST_URI'];
$params = explode("/", $request);
$title = "HealthOne";
$titleSuffix = "";

session_start();

switch ($params[1]) {
    case 'categories':
        $titleSuffix = ' | Categories';
        $categories = getCategories();
        include_once"../Templates/categories.php";
        break;

    case 'category':
        $titleSuffix = ' | Category';
        if (isset($_GET['id'])) {
            $categoryId = $_GET['id'];
            $products = getProducts($categoryId);
            $name = getCategoryName($categoryId);
            include_once "../Templates/products.php";
        } else {
            $titleSuffix = ' | Home';
            include_once"../Templates/home.php";
        }
        break;

    case 'product':
        if (isset($_GET['id'])) {
            $productId = $_GET['id'];
            $product = getProduct($productId);
            $name = getCategoryName($product->category_id);
            $titleSuffix = ' | ' . $product->name;
            include_once "../Templates/product.php";
        } else {
            $titleSuffix = ' | Home';
            include_once "../Templates/home.php";
        }
        break;

        case 'review':
            if(isset($_GET['id'])){
                $productId = $_GET['id'];
                $product = getProduct($productId);
                $reviews = getReviews($productId);
                $name = getCategoryName($product->category_id);
                $titleSuffix = ' | ' . $product->name;
                //close buton
                if(isset($_POST['close'])){
                    header("Location: /product/$productId");
                }
                //submit form button
                elseif (isset($_POST['name']) && !empty($_POST['name']) && isset($_POST['description']) && !empty($_POST['description'])) {
                    $name = filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING);
                    
                    $description = filter_input(INPUT_POST, "description", FILTER_SANITIZE_STRING);
                    $stars = filter_input(INPUT_POST, "stars", FILTER_SANITIZE_STRING);
                    $x=saveReview($name,$description,$stars,$product->id);
                    header("Location: /product/$productId");
                } else {
                    include_once "../Templates/review.php";
                }
                
            }else{
                $titleSuffix = ' | Home';
                include_once "../Templates/home.php";
            }
            break;
    

    case 'contact':
        include_once "../Templates/contact.php";
        break;
    
    case 'login':
        $titleSuffix = ' | Login';
        if(isset($_POST['login'])){
        $result = checkLogin();
            switch ($result){
                case 'ADMIN':
                header("Location: /admin/home");
                    break;
                case 'MEMBER':
                    break;
                case 'Failure':
                    $message = "Email of password niet correct ingevuld!";
                    include_once "../Templates/login.php";
                    break;
                case 'INCOMPLETE':
                    $message = "Formulier niet volledig ingevuld!";
                    include_once "../Templates/login.php";
                }
            }
        else {
            include_once "../Templates/login.php";
            }
        break;
    
    case 'registreren':
        $titleSuffix =' | Registreren';
        if (isset($_POST['register'])) {
        //$result = makeregistration();
        switch($result){
            case 'SUCCES':
                header("Location: /home");
                break;
            case 'INCOMPLETE':
                $message = "Niet alle velden zijn correct ingvuld";
                include_once "../Templates/registreren.php";
                break;
            case 'EXIST':
                $message = "Gebruiker bestaat al";
                include_once "../Templates/registreren.php";
                break;
                }
        } 
        else {
            include_once "../Templates/registreren.php";
            break;
        }
        include_once "../Templates/registreren.php";
        break;

    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
}

function getTitle() {
    global $title, $titleSuffix;
    return $title . $titleSuffix;
}
