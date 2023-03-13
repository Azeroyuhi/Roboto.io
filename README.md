body{
    font-family: 'Open Sans', sans-serif;
    background-color: #FF9D93;
}

  /* Style pour l'en-tête */
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    color:white;
  }

  /* Style pour le logo du robot */
  header img {
    height: 50px;
    margin-right: 10px;
  }

  /* Style pour les boutons de navigation */

  nav {
    display: flex;
    align-items: center;
    left: 50%;
  }

  nav a {
    display: block;
    padding: 10px;
    margin-right: 10%;
    border-radius: 5px;
    text-decoration: none;
  }

  /**********************************/

.tâches{
    /* Affects the UL element */
    overflow: hidden;
    display: flex;

    font-size: 14px;
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}

.tâches li{
    /* Specifying a fallback color and we define CSS3 gradients for the major browsers: */
    background-color: #f0f0f0;
    background-image: -webkit-gradient(linear,left top, left bottom,from(#fefefe), color-stop(0.5,#f0f0f0), color-stop(0.51, #e6e6e6));
    background-image: -moz-linear-gradient(#fefefe 0%, #f0f0f0 50%, #e6e6e6 51%);
    background-image: -o-linear-gradient(#fefefe 0%, #f0f0f0 50%, #e6e6e6 51%);
    background-image: -ms-linear-gradient(#fefefe 0%, #f0f0f0 50%, #e6e6e6 51%);
    background-image: linear-gradient(#fefefe 0%, #f0f0f0 50%, #e6e6e6 51%);

    border-right: 1px solid rgba(9, 9, 9, 0.125);

    /* Adding a 1px inset highlight for a more polished efect: */

    box-shadow: 1px -1px 0 rgba(255, 255, 255, 0.6) inset;
    -moz-box-shadow: 1px -1px 0 rgba(255, 255, 255, 0.6) inset;
    -webkit-box-shadow: 1px -1px 0 rgba(255, 255, 255, 0.6) inset;

    position:relative;

    /*float: left;*/
    list-style: none;
}

.tâches li:after{
    content:'.';
    text-indent:-9999px;
    overflow:hidden;
    position:absolute;
    width:100%;
    height:100%;
    top:0;
    left:0;
    z-index:1;
    opacity:0;

    background: aqua;
    -moz-transition:0.25s all;
    -webkit-transition:0.25s all;
    -o-transition:0.25s all;
    transition:0.25s all;
}

/* Treating the first LI and li:after elements separately */

.tâches li:first-child{
    border-radius: 4px 0 0 4px;
}

.tâches li:first-child:after,
.tâches li.selected:first-child:after{
    box-shadow:1px 0 0 #a3a3a3,2px 0 0 #fff;
    -moz-box-shadow:1px 0 0 #a3a3a3,2px 0 0 #fff;
    -webkit-box-shadow:1px 0 0 #a3a3a3,2px 0 0 #fff;
    
    border-radius:4px 0 0 4px;
}

.tâches li:last-child{
    border-radius: 0 4px 4px 0;
}

/* Treating the last LI and li:after elements separately */

.tâches li:last-child:after,
.tâches li.selected:last-child:after{
    box-shadow:-1px 0 0 #a3a3a3,-2px 0 0 #fff;
    -moz-box-shadow:-1px 0 0 #a3a3a3,-2px 0 0 #fff;
    -webkit-box-shadow:-1px 0 0 #a3a3a3,-2px 0 0 #fff;
    
    border-radius:0 4px 4px 0;
}

.tâches li:hover:after,
.tâches li.selected:after,
.tâches li:target:after{
    /* This property triggers the CSS3 transition */
    opacity:1;
}

.tâches:hover li.selected:after,
.tâches:hover li:target:after{
    /* Hides the targeted li when we are hovering on the UL */
    opacity:0;
}

.tâches li.selected:hover:after,
.tâches li:target:hover:after{
    opacity:1 !important;
}

/* Styling the anchor elements */

.tâches li a{
    color: #5d5d5d;
    display: inline-block;
    font: 30px/1 Lobster,Arial,sans-serif;
    padding: 10px 90px 12px ;
    position: relative;
    text-shadow: 1px 1px 0 rgba(255, 255, 255, 0.6);
    z-index:2;
    text-decoration:none !important;
    white-space:nowrap;
    text-align: center;
}

.tâches a.homeIcon{
    background:url('../img/home.png') no-repeat center center;
    display: block;
    overflow: hidden;
    padding-left: 12px;
    padding-right: 12px;
    text-indent: -9999px;
    width: 16px;
}

      /********************************************
  /* Style pour le contenu principal */
main {
padding: 20px;
text-align: center;
}

main h2 {
font-size: 2em;
margin-bottom: 20px;
}

main p {
font-size: 1.2em;
}

/* Style pour le pied de page */
footer {
padding: 20px;
text-align: center;
color: white;
}

footer p {
margin: 0;
font-size: 0.8em;
}

.menu {
    display: flex;
    padding:0;
    justify-content: space-around;
}
.menu a {
    display:block;                /* Transformation en block */
    min-width: 55%;             /* Largeur minimale des liens */   
    margin: 0.5rem;               /* Marges externes */
    padding: 0.4rem 0;            /* Marges internes */
    text-align: center;           /* Centrage du texte */   
    color: rgb(230, 228, 224);  /* Couleur du texte */
    text-decoration: none;        /* Suppression du soulignement */
    border-radius: 4%;           /* Arrondis des bordures */
    transition: all 1s ;          /* Ajout des effets de transition */
}

.menu a:hover,
.menu a:hover.actif{
    color: rgb(0, 0, 0);
    border-color: #0000;
    border-bottom-left-radius: initial;
}

/*.contenu{
    border: solide 9px black;
    background:rgb(23, 136, 125);
    width: 700px;
    height: 700px;
    border: solid 2px black;
    margin-left: 26%;
}
*/
.commande{
    padding-top: 45px;
}

.top{
    margin: 0 auto;
    display: grid;
    grid-template-columns: 1fr 1fr; /* deux colonnes de largeur égale */
    grid-gap: 1px;
    padding-bottom: 55px;
}

#element{
    width: 45%;
    height: 40px;
    font-size: 20px;
    font-family: 'Times New Roman', Times, serif;
    border-radius: 6px;
}

#etat{
    border-radius: 6px;
}

#CommandLable{
    font-size: 25px;
    font-family: 'Times New Roman', Times, serif;
}

.status{
    margin:0 auto;
    width: 45%;
    height: 40px;
    border-radius: 6px;
    font-family: 'Times New Roman', Times, serif;
}

.Zones{
    display: grid;
    grid-template-columns: 1fr 1fr; /* deux colonnes de largeur égale */
    grid-gap: 10px; /* espacement de 10 pixels entre les colonnes */
    margin-bottom: 60px;
    border: solid 2px black;
    background-color: aqua;
}

#depart{
    height: 45px;
    width: 104px;
    border-radius: 5px;
    background-color: #ffffff;
    color: #2b2929;
    font-weight: bold;
    cursor: pointer;
    font-size: 21px;
    font-family: 'Times New Roman', Times, serif;
}

#arriver{
    height: 45px;
    width: 104px;
    border-radius: 5px;
    background-color: #ffffff;
    color: #2b2929;
    font-weight: bold;
    cursor: pointer;
    font-size: 21px;
    font-family: 'Times New Roman', Times, serif;
}

.Zonedepart{
    border-radius:  3px black;
    background-color: aqua;
    width: 280px;
    height: 270px;
    margin: 0 auto;
    margin-right:50px;
}

.Zonearriver{
    border-radius:  3px ;
    background-color: aqua;
    width: 280px;
    height: 270px;
    margin: 0 auto;
    margin-left: 50px;
}

h2{
    font-family: 'Times New Roman', Times, serif;
}

button {
    height: 45px;
    width: 104px;
    border-radius: 5px;
    background-color: #FF9D93;
    color: #2b2929;
    font-weight: bold;
    cursor: pointer;
    font-size: 23px;
    font-family: 'Times New Roman', Times, serif;
}

button:hover {
    background-color: aqua;;
}

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
			//alert(texteInput);
		}

        function recupererzonedepart()
        {
            const monSelect = document.getElementById("depart");
            const depart= monSelect.value;
            console.log(optionSelectionnee);
            alert(depart);
        }

        function recupererzonearrive()
        {
            const monSelect = document.getElementById("arriver");
            const arrive = monSelect.value;
            console.log(optionSelectionnee);
            alert(arrive);
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



