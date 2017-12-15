#!c:\php



<?php
//Debug Mode
error_reporting(E_ALL);

// init du tableau des variables passé au script
//var_dump($argv);

// $argv[1] est le nom du fichier à traiter

// le fichier à lire 
$fichier = $argv[2];

// Read contents
//$name = $argv[3].$fichier;

//$source = __DIR__ . "/{$name}";
$source = $argv[1].$argv[2];



//init des variable
$prefixe = "";
$ficResources = fopen($source,"r");
$modeSortie = FALSE;
$tabInfo= array();
$lieuSortie = "";
$lignePrecedentSortie = FALSE;
$matches =[];
$lieuSortie = null;
$orgaSortie = null;
$endBySpecialChar ="";




// lecture du fichier ligne par ligne
while ( ($ligne = fgets($ficResources) ) != FALSE  ){
	// on nettoie le contenu de la ligne
	// si la ligne a des points double entre les mots on les supprimes
	$lignePropreEspace = utf8_encode(trim(preg_replace('/[\.\.]+/', '.',$ligne)));
	// si la ligne a des espaces double entre les mots on les supprimes
	$lignePropreEspace = utf8_encode(trim(preg_replace('/\s\s+/', ' ',$ligne)));
	$ligneMajuscule = strtoupper($lignePropreEspace);
	$ligneMinuscule = strtolower($lignePropreEspace);

	$ligneNonChampi = FALSE;
	$endBySpecialChar = FALSE;
	// les mots de la ligne
	$tabMots = explode(" ",$lignePropreEspace);
	$nbMots = count($tabMots);
	$matches =[];
	/* détection du contenu des lignes */
	/* la ligne commence par "sortie" : c'est un descriptif de sortie
		on passe en mode 'sortie' : toutes le ligne suivantes sont à rattaché à une sortie
	*/
	if ( preg_match("/^(Sortie du)([a-zA-Z (0-9)+]+)/i",$lignePropreEspace, $matches) ) {
		$modeSortie = TRUE;
		$nomSortie = $lignePropreEspace;
		$date = trim($matches[2]);
		// nouvelle sortie , il n'y a plus de qualificatif
		$qualif = "";
		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = TRUE;

	} else 	if (preg_match("/^Lieu|^Sortie de/ui",$lignePropreEspace)) {
		/* la ligne commence par "lieu" : c'est un descriptif de lieu et contient aussi 
		probablement un ensemble d'information sur les organisateurs etc...
		ex de structure :
		Lieu : Saint-Cybardeaux (Forêt de Bonneuil). Organisateur :
		On extrait la définition du Lieu et des organisateurs
		De "Lieu :" jusqu'au "."suivant , cela correspond à "lieuSortie"
		De "Organisateur : "  jusqu'au premier chiffre "nombre de participant", cela correspond à "orgaSortie"
		*/

		$extractLieu = preg_match("#Lieu : ([a-zA-Z \-(0-9)',éèêëàâîïùûüôçœ]+)#",$lignePropreEspace, $matches);
		//print_r($lignePropreEspace);
		//print_r($matches);		
		// eviter une exception si aucune valeur n'est trouvée
		$lieuSortie = isset($matches[1]) ? $matches[1] : "VALEUR INTROUVABLE";
		//print_r($lieuSortie);

		$extractOrga = preg_match("#Organisa(teurs|teur|trice|trices) : ([a-zA-Z -.éèêëàâîïùûüôçœ]+)\d#",$lignePropreEspace, $matches);
		//print_r($lignePropreEspace);
		//print_r($matches);
		// eviter une exception si aucune valeur n'est trouvée
		$orgaSortieToClean = isset($matches[2]) ? $matches[2] : "VALEUR INTROUVABLE.";
		// on enlève le "."
		$orgaSortie = substr(trim($orgaSortieToClean),0,-1);
		//print_r($orgaSortie);


		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = FALSE;

	}  else if ($modeSortie && (preg_match("/Organisateurs?|Organisatrices?/ui",$lignePropreEspace))) {
		/* la ligne ne commence pas par "lieu" ni "Site de" mais contient "Organi" et un descriptif de lieu
		probablement un ensemble d'information sur les organisateurs etc...
		ex de structure :
		Saint-Cybardeaux (Forêt de Bonneuil). Organisateur :
		On extrait la descritption du Lieu et des organisateurs
		Ce qui se trouve avant Organisateur : ", cela correspond à "lieuSortie"
		De "Organisateur : "  jusqu'au premier chiffre "nombre de participant", cela correspond à "orgaSortie"
		*/

		//$extractLieu = preg_match("#Lieu : ([a-zA-Z \-(0-9)',éèêëàâîïùûüôçœ]+)#",$lignePropreEspace, $matches);

		$extractOrga = preg_match("/(.*?)\. (Organisateurs?|Organisatrices? :) ([a-zA-Z -.éèêëàâîïùûüôçœ]+)\d/ui",$lignePropreEspace, $matches);
		//print_r($lignePropreEspace);
		//print_r($matches);
		// eviter une exception si aucune valeur n'est trouvée
		$lieuSortie = isset($matches[1]) ? $matches[1] : "VALEUR INTROUVABLE";
		$orgaSortie = isset($matches[3]) ? $matches[3] : "VALEUR INTROUVABLE";
		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = FALSE;

	//} else 	if ( preg_match("/Apport|r[eé]colte/i",$lignePropreEspace) && 	$nbMots< 12  ) {
	}else if (preg_match("/Apport/ui",$lignePropreEspace)) {
		// la ligne contient un  qualificatif "récolte" ou "apport" 
		$qualif = "Apport";
		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = FALSE;
		//echo $qualif." 	$nbMots \n<br>";
	} else if (preg_match("/^Récoltes personnelles/ui",$lignePropreEspace)){
		// cas d'une exposition
		$modeSortie = TRUE;
		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = FALSE;
		$qualif = "Recolte personnelles";

	} else if (preg_match("/r[eé]colte/ui",$lignePropreEspace)) {
		$qualif = "Recolte";
		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = FALSE;

	}  else if (preg_match("/(\)$|(:)$)/ui",$lignePropreEspace)) {			
			// si il s'agit d'une section apport et que le contenu est une ligne qui termine par ")" alors il faut faire d'autre test sur la ligne
		$lignePrecedentSortie = FALSE;
		$endBySpecialChar = True;

	} else if ($ligneMajuscule == $lignePropreEspace) {
		// la ligne ne contient que des majuscules  : ça indique un groupe de champignon =>  a ignorer
		$ligneNonChampi = TRUE;
		$lignePrecedentSortie = FALSE;

	} else if (preg_match("/^Exposition/ui",$lignePropreEspace)){
		// cas d'une exposition
		$ligneNonChampi = TRUE;
		$modeSortie = FALSE;
		$lignePrecedentSortie = FALSE;
	} 


	/* si la ligne, n'est pas vide, n'est pas une ligne qui ne décrit pas un champigon ( = pas sortie ou lieu ou groupe)
		et qu'on est en mode 'sortie' : une descrption de sortie a eu lieu avant 
		Alors : la ligne courante désigne un champignon et on va faire quelque traitements
	*/
	if (trim($lignePropreEspace) != "" && (!$ligneNonChampi ) && $modeSortie ) {
		$doPrefixe = "";
		$especeOk = "";		

		if (!$endBySpecialChar){
			if (preg_match("/[.]$/",$lignePropreEspace)){
				//le point n'est pas un caractère special
				// si le nom de champignon termine par . alors on enlève
				$lignePropreEspace = substr($lignePropreEspace,0,-1);
			}
			// si ligne avec un seul mot : le prefixe a été défini sur une ligne précédente
			if ($nbMots == 1) {
			//	echo " prefixComplete $prefixe ";
				$doPrefixe = "prefixe";
				// le nom correct de l'espèce est le prefixe défini précedement suivi du mot de la ligne courante mais il faut qu'il ait été défini !
				if ($prefixe == ""){
					$espece = $lignePropreEspace;
					$especeOk = "Non il n'y a pas de préfixe définit précédement";
				
				} else if ($prefixe != ""){
					$espece = $prefixe . $lignePropreEspace;
					$especeOk = "Oui : il n'y avait qu'un mot mais le préfixe vient de la ligne précédente";
				} 
			} else if ($nbMots == 2 && strlen($tabMots[1]) > 1) {			
				// cas ligne à 2 et 2 eme mot de plus d'un caractère : le nom d'espèce est correct
				$prefixe = $tabMots[0]." ";
				$especeOk = "Oui : il y a 2 noms et le 2nd mot a plus d'un caractère";
				$espece = $lignePropreEspace;
				if (preg_match("/[\d \*]$/ui",$lignePropreEspace)){
					// cas ou la ligne termine par une *, il y a une observation plus loin dans le document
					$lignePropreEspace = substr($lignePropreEspace,0,-1);
					$especeOk = "OK et note plus loin dans le document";
				}
			} else if (preg_match("/([a-zA-Z ]+)(var.)|(fo.)|(f.)([a-zA-Z ]+)/ui",$lignePropreEspace)) {			
				// si le texte contient "var." "fo." ou "f."
				if (preg_match("/(^[\" *]+[a-zA-Z .]+[a-zA-Z])/ui",$lignePropreEspace, $matches)) {
					//cas ou le texte contient des "" alors on en tiens pas compte et on supprime les espaces
					$espece = trim($matches[1]);
					$espece = trim(preg_replace('/\" */', '',$espece));
					$tabMotsEspece = explode(" ",$espece);
					$nbMotsEspece = count($tabMotsEspece);
					
					
					if (preg_match("/^var.|^fo.|^f./ui",$espece) && $nbMotsEspece == 2){
						// On ajoute le préfixe si le texte commence par var.
						$doPrefixe = "prefixe";
						$espece = $prefixe . $espece;
						$especeOk = "Oui : il commence par \"var.\"\"fo.\"ou \"f.\"le nom n'avait pas de préfixe";
					} else if (preg_match("/^var.|^fo.|^f./ui",$espece) && $nbMotsEspece > 2){
						$doPrefixe = "prefixe";
						$espece = $prefixe . $espece;
						$especeOk = "Oui : il commence par \"var.\"\"fo.\"ou \"f.\" le nom est annormalement long";
					} else {
						$especeOk = "étrange : commence par des guillemets,mais n'est pas suivi de \"var.\"\"fo.\"ou \"f.\" " ;
						$espece = $lignePropreEspace;
					} 			
				} else {
					$prefixe = $tabMots[0]." ";
					$especeOk = "Oui : le nom contient var. fo. ou f.";
					$espece = $lignePropreEspace;
				}
			} else if ($nbMots == 2 && preg_match("/(N$)/ui",$lignePropreEspace)){
				// Le nom de l'espèce termine par N mais n'avait pas de préfixe
				$espece = $prefixe . $lignePropreEspace;
				$especeOk = "Oui: Le nom de l'espèce termine par N mais n'avait pas de préfixe";
			} else if ($nbMots > 2 && preg_match("/(N$)/ui",$lignePropreEspace)){
				// Le nom contient plus de 2 mots et termine par N
				$prefixe = $tabMots[0]." ";
				$espece = $lignePropreEspace;
				$especeOk = "Oui : Le nom contient plus de 2 mots et termine par N";
			} else  {
				// le nom  de l'espèce est étrange
				$espece = $lignePropreEspace;
				$especeOk = "étrange A VERIFIER";
			}

		} else {
			$espece = $lignePropreEspace;
			$especeOk = "termine par un caractère special";
		}

		$lignePrecedentSortie = FALSE;

		// on stocke les informations de la ligne  dans un tableau
		$tabInfo[$nomSortie][$lieuSortie][$orgaSortie][$espece] = $qualif;
		$tabInfoPrefixe[$nomSortie][$lieuSortie][$espece] = $doPrefixe;
		$tabInfoEspeceOK[$nomSortie][$lieuSortie][$espece] = $especeOk;
	}
	// ligne qui ne désigne pas un champignon : on la stocke dans un tableau des ligne ignorées
	if ($ligneNonChampi && (trim ($lignePropreEspace)  != "") ) {
		$tabLigneIgnoree[] = $lignePropreEspace;
	}
}

//print_r($tabInfo);

// on prépare la sortie CSV : ici l'entete
$strLigne = '"Sortie";"Lieu";"Organisateur";"Espece";"Qualificatif";"prefixeDeduit";"espece correcte"'."\n";


/* parcous du tableau des sortie*/
foreach($tabInfo as $nomSortie => $tabLieu) {
	/* parcours des lieux de la sortie */
	foreach($tabLieu as $lieuSortie => $taborga) {
		// parcours des organisateurs
		foreach($taborga as $orgaSortie => $tabEspeces) {
			/* parcours des espèces */
			foreach($tabEspeces as $espece => $qualif) {
				//echo "\"$nomSortie\";\"$lieuSortie\";\"$espece\";\"$qualif\";\"".$tabInfoPrefixe[$nomSortie][$lieuSortie][$espece]."\"\n";
				
				// on complete le contenu du csv avec le infos des tableaux
				$strLigne .= "\"$nomSortie\";\"$lieuSortie\";\"$orgaSortie\";\"$espece\";\"$qualif\";\"".$tabInfoPrefixe[$nomSortie][$lieuSortie][$espece]."\";\"".$tabInfoEspeceOK[$nomSortie][$lieuSortie][$espece]."\"\n";
			}
		}
	}	
}


	// pour toutes les ligne ignorée : on mets ça dans un txt
	$strIgnore = "";
	foreach($tabLigneIgnoree as $ligneIgnoree) {
		$strIgnore .= "$ligneIgnoree\n";
	}
	file_put_contents("ligne_ignoree".str_replace(".txt","",$fichier).".txt",$strIgnore);

	// le csv est créé
	fclose($ficResources);
	file_put_contents("recap".str_replace(".txt","",$fichier)."EDIT.csv",$strLigne);
	//die();
//}

echo "ok";