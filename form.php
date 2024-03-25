<html>
    <head>
        <title>MultiBuro</title>
        <meta charset="UTF-8">
        <link href="index.css" rel="stylesheet" type="text/css" media="screen">
    </head>
    <script>
        function verifDate(date)
        {
            <?php
                // Ouverture du fichier CSV
                $monFichier = fopen('./Client.csv','r');
             ?>

            console.log(date);

            <?php 
             // Lecture ligne à ligne
            while(!feof($monFichier))
            {
                // Récupération et affichage de la ligne en cours
                $ligne = fgets($monFichier);
                $tab = explode('|', $ligne);
                // Recup date

                //Verification
                if (str_contains($tab[5], $resLabel)) { // and date == tab[4]
        ?>

            if (date == <?php $tab[4]?>) {
                alert("STOP");
            }

            <?php
                    echo "<br> Oui | ", $tab[5], " \ ", $tab[4], " | <br>";
            }
            }
            // Fermeture du fichiers CSV
            fclose($monFichier);
            ?>
            
        }

        function dateSelect(e)
        {
            date = e.target.value

            alert(date)
            verifDate(date);
            
        }
    </script>
    <body>
        <?php
        
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // Something posted
          
            if (isset($_POST['Res1'])) {
              $resLabel = "Res1";
            }
            if (isset($_POST['Res2'])) {
                $resLabel = "Res2";
            }
            if (isset($_POST['Res3'])) {
                $resLabel = "Res3";
            }
          }

        ?>

        <h1>Formulaire <?php echo $resLabel; ?></h1>

        <form action="checked.php" method="post">

            <!-- Conteneur du formulaire -->
            <div id="conteneur">
                <!-- Saisie du nom -->
                <div>
                    <label>Nom</label>
                    <input type="text" name="nom">
                </div>
                <!-- Saisie du prénom -->
                <div>
                    <label>Prénom</label>
                    <input type="text" name="prenom">
                </div>
                <!-- Saisie du Téléphone -->
                <div>
                    <label>Téléphone</label>
                    <input type="text" name="telephone">
                </div>
                <!-- Saisie de l'Email -->
                <div>
                    <label>Email</label>
                    <input type="email" name="email">
                </div>
                <!-- Saisie de la date de reservation -->
                <div>
                    <label>Date de réservation</label>
                    <input type="date" name="dateRes" onchange="dateSelect(event);" >
                </div>
                <!-- Validation -->
                <div>
                    <input type="hidden" name="labelle" value="<?php echo $resLabel; ?>">
                    <input type="submit" value="Reserver">
                </div>

            </div>

        </form>
        
    </body>
</html>


