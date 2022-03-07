<!DOCTYPE html>
<html>
    <?php
    include_once('defaults/head.php');
    ?>

    <body>

        <div class="container">
            <?php
            include_once('defaults/header.php');
            include_once('defaults/menu.php');
            include_once('defaults/pictures.php');
            global $product, $name;
            ?>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Home</a></li>
                    <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
                    <li class="breadcrumb-item"><a href="/categories/<?= $product->category_id ?>"> <?= $name ?></a></li>
                    <li class="breadcrumb-item active" aria-current="page"><?=$product->name ?></li>
                </ol>
            </nav>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <img class="img-fluid center-block" width="200px" src='/img/<?= $product->picture ?>'>
                        <div class="card-body">
                            <h5 class="card-title"><?= $product->name ?></h5>
                        </div>
                    </div>
                </div>
            </div>

            <?php
            
            try{
                $db = new PDO("mysql:host=localhost;dbname=healthone","root", "");
                
                if(isset($_POST['verzenden'])){
                    $name = filter_input(INPUT_POST, "name", FILTER_SANITIZE_STRING);
                    $description = filter_input(INPUT_POST, "description", FILTER_SANITIZE_STRING);
                    $stars = filter_input(INPUT_POST, "stars", FILTER_SANITIZE_STRING);

                    $query = $db->prepare("INSERT INTO review(name, description, stars, product_id) VALUES(:name, :description, :stars, $product->id)");

                    $query->bindParam("name", $name);
                    $query->bindParam("description", $description);
                    $query->bindParam("stars", $stars);

                    if($query->execute()){
                        echo "De nieuwe gegevens zijn toegevoegd.";
                    } else{
                        echo "Oops er is een fout opgetreden.";
                    }
                    echo "<br>";
                }
            } catch(PDOException $e){
                die("Error!: " . $e->getMessage());
            }
            ?>

            <div class="row">
                <div class="col-md-12">
                    <form method="post" action="">
                        <div class="mb-3">
                            <label class="form-label" for="name">Naam </label>
                            <input type="text" name="name"><br>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="name">Review </label>
                            <textarea type="text" name="description"></textarea><br>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="name">Score </label>
                            <input type="text" name="stars"><br>
                        </div>
                        <br>
                        <input type="submit" name="verzenden" value="Opslaan">
                    </form>
                </div>
            </div>
            <hr>
            <?php
            include_once('defaults/footer.php');

            ?>
        </div>
    </body>
</html>