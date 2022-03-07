<!DOCTYPE html>
<html>
    <?php
    include_once('defaults/head.php');
    ?>
    <body>
        <div class="container">
            <?php
            include_once ('defaults/header.php');
            include_once ('defaults/menu.php');
            include_once ('defaults/pictures.php');
            ?>

            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Home</a></li>
                    <li class="breadcrumb-item"><a href="/registratie">Registreren </a></li>
                </ol>
            </nav>

            <h1 class="text-center">| Abonnementen |</h1><br>

            <div class="row">
                <div class="col-md-10 mx-auto d-block">
                    <h6>Op dit moment beschikken wij over 2 abonnementen; een jaar- en een maandabonnement. Het is op dit moment nog niet mogelijk om via de site een lidmaatschap te kopen.
                    Voor meer informatie over de prijzen zie hieronder.</h6>   
                </div>
            </div>

            <br>

            <?php
                try {
                    $db = new PDO("mysql:host=localhost;dbname=healthone","root", "");
                     $query = $db->prepare ("SELECT * FROM abonnementen");
                    $query->execute();
                    $result = $query->fetchAll(PDO::FETCH_ASSOC);
                    echo "<table>";
                    foreach ($result as &$data) {
                        echo "<td>" . $data ["type"] . " ";
                        echo "<td>&euro; " . number_format($data ["prijs"],2,",",".") . "<br>";
                        echo "</tr>";
                        }
                    echo "</table>";
                    } catch(PDOException $e) {
                    die("Error!: " . $e->getMessage());
                }
            ?>    

            <br>
            
            <form class="row g-3" method="post">
                <div class="col-md-12 col-lg-6">
                    <label for="inputEmail4" class="form-label">E-mail</label>
                    <input type="email" name="email" class="form-control" id="inputEmail4">
                </div>
                <div class="col-md-12 col-lg-6">
                    <label for="inputPassword4" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" id="inputPassword4">
                </div>
                <div class="col-md-6 ">
                    <label for="inputAddress" class="form-label">First Name</label>
                    <input type="text" name="firstName" class="form-control" id="inputAddress" placeholder="Piet">
                </div>
                <div class="col-md-6">
                    <label for="inputAddress2" class="form-label">Last Name</label>
                    <input type="text" name="lastName" class="form-control" id="inputAddress2" placeholder="van Vliet">
                </div>
                <div class="col-12">
                    <button type="submit" name="register" class="btn btn-primary">Sign Up</button>
                </div>
            </form>

            <hr>
            <?php
            include_once ('defaults/footer.php');
            ?>
        </div>
    </body>
</html>