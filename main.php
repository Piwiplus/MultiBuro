<html>
    <head>
        <title>MultiBuro</title>
        <meta charset="UTF-8">
        <link href="index.css" rel="stylesheet" type="text/css" media="screen">
        <?php include 'function.inc.php'; ?>
    </head>
    <body>
        <?php 

        //echo verifInfo('nom');

        ?>
        <h1>Home</h1>

        <div id="conteneur">

        <form action="form.php" method="post">
            <div id="card">
                <p>Res1</p>
                <input type="submit" name="Res1" value="Reserver">
            </div>
            <div id="card">
                <p>Res2</p>
                <input type="submit" name="Res2" value="Reserver">
            </div>
            <div id="card">
                <p>Res3</p>
                <input type="submit" name="Res3" value="Reserver">
            </div>

        </form>
        

        </div>
        
    </body>
</html>


