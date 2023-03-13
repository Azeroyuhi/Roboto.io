<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>ROBOT TRANSPORTEUR</title>
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
    <link rel="shortcut icon" href="images/Logo__2_-removebg-preview.png" type="image/png">
</head>
<body>
	<header>
		<h1>ROBOT TRANSPORTEUR</h1>
		<img src="images/Logo__2_-removebg-preview.png" alt="Robot logo">
	</header>
	<main>
        <nav class="menu">
            <lu class = tâches>
                <li id = "commande">
                    <a href="Commande.html" class = "commandeIcon">commande</a>
                </li>
                <li id = "Localisation">
                    <a href="Localisation.html" class = "LocalisationIcon">Localisation</a>
                </li>
            </lu>
       </nav>
		<!-- c  -->
        <div class="commande">
            <div class = "top">
              <!--  <div id = "elements">
                    <label for="element" id = "CommandLable">Commande : </label>
                    <input type="text" id="element" name="element">
                </div>-->
                <form id = "elements">
                    <label for="element">Commande : </label>
                    <input type="text" id="element" name="element">
                </form>
                <div class="status">
                    <label for="status" id = "etat"><h2>ROBOT</h2></label>
                </div>
            </div>
            <div class = "Zones">
                <div class="Zonedepart">
                    <label for="zone"><h2>Zone départ</h2></label>
                    <form action="/action_page.php" method="get"></form>
                        <select id="depart" name="depart">
                            <option value="zone1">Zone 1</option>
                            <option value="zone2">Zone 2</option>
                            <option value="zone3">Zone 3</option>
                        </select>
                    </form>
                </div>
                <div class="Zonearriver">
                    <label for="zone"><h2>Zone d'arriver</h2></label>
                    <form action="/action_page.php" method="get"></form>
                        <select id="arriver" name="arrive">
                            <option value="zone1">Zone 1</option>
                            <option value="zone2">Zone 2</option>
                            <option value="zone3">Zone 3</option>
                        </select>
                    </form>
                </div>
            </div>
            <button type="button" id="Valdier" onclick="recupererTexte(), recupererzonearrive(), recupererzonedepart()">Valider</button>
        </div>
	</main>
    <hr>
	<footer>
        <h1 class="Team">TEAM</h1>
            <p> ZERYOUHI Amine,
                ZERYOUHI Amine, 
                ZERYOUHI Amine</p>
            <hr>
            <h2>VERSION 0.1 </h2>
		<!-- contenu du pied de page -->
	</footer>

    <script>
		function recupererTexte()
        {
			const element = document.getElementById("element");
			const texteInput = element.value;
			alert(texteInput);
		}

        function recupererzonedepart()
        {
            const monSelect = document.getElementById("depart");
            const depart= monSelect.value;
            console.log(optionSelectionnee);
            //alert(depart);
        }

        function recupererzonearrive()
        {
            const monSelect = document.getElementById("arriver");
            const arrive = monSelect.value;
            console.log(optionSelectionnee);
            //alert(arrive);
        }

        function verfierzone()
        {
            if (depart == arrive)
            {
                return false;
            }
            else
            {
                true;
            }
        }
	</script>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>ROBOT TRANSPORTEUR</title>
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
    <link rel="shortcut icon" href="images/Logo__2_-removebg-preview.png" type="image/png">
</head>
<body>
	<header>
		<h1>ROBOT TRANSPORTEUR</h1>
		<img src="images/Logo__2_-removebg-preview.png" alt="Robot logo">
	</header>
	<main>
        <nav class="menu">
            <lu class = tâches>
                <li id = "commande">
                    <a href="Commande.html" class = "commandeIcon">commande</a>
                </li>
                <li id = "Localisation">
                    <a href="Localisation.html" class = "LocalisationIcon">Localisation</a>
                </li>
            </lu>
       </nav>
		<!-- c  -->
        
	</main>
    <hr>
	<footer>
        <h1 class="Team">TEAM</h1>
            <p> ZERYOUHI Amine,
                ZERYOUHI Amine, 
                ZERYOUHI Amine</p>
            <hr>
            <h2>VERSION 0.1 </h2>
		<!-- contenu du pied de page -->
	</footer>

</body>
</html>



