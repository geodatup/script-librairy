
télécharger la page html qui liste les noms des membres

wget http://www.federation-drone.org/les-membres-de-la-federation/operateurs/

pour chacun des membres listés entre les balises html 
<div class="upme-field-name ">[...]</div>

télécharger la page html du membre dans la balise href ""
<a href="[...]" [...]</a>


sur la page membre htm, extraire les informations entre les balises

<div id="upme-profile-panel" class="upme-profile-tab-panel upme-main upme-main-"><div class="upme-field upme-view upme-upme_civilite">
	<div class="upme-field-type"><i class="upme-icon upme-icon-none"></i><span>Civilité du Dirigeant</span></div>
	<div class="upme-field-value"><span>Monsieur</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_last_name">
	<div class="upme-field-type"><i class="upme-icon upme-icon-user"></i><span>Nom du dirigeant</span></div>
	<div class="upme-field-value"><span>PALLANDRE</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_first_name">
	<div class="upme-field-type"><i class="upme-icon upme-icon-user"></i><span>Prénom du dirigeant</span></div>
	<div class="upme-field-value"><span>PIERRE-LAURENT</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_company">
	<div class="upme-field-type"><i class="upme-icon upme-icon-ambulance"></i><span>Raison sociale</span></div>
	<div class="upme-field-value"><span>RPL VISION</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_address_1">
	<div class="upme-field-type"><i class="upme-icon upme-icon-envelope"></i><span>Adresse</span></div>
	<div class="upme-field-value"><span>41 rue Louis Guérin</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_postcode">
	<div class="upme-field-type"><i class="upme-icon upme-icon-none"></i><span>Code postal</span></div>
	<div class="upme-field-value"><span>69100</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_city">
	<div class="upme-field-type"><i class="upme-icon upme-icon-university"></i><span>Ville</span></div>
	<div class="upme-field-value"><span>VILLEURBANNE</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-upme_geo_localisation">
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-billing_phone">
	<div class="upme-field-type"><i class="upme-icon upme-icon-tty"></i><span>Téléphone</span></div>
	<div class="upme-field-value"><span>0675207540</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-user_url">
	<div class="upme-field-type"><i class="upme-icon upme-icon-link"></i><span>Site web</span></div>
	<div class="upme-field-value"><span><a rel="external nofollow" target="_blank" href="http://www.rpl-vision.fr">http://www.rpl-vision.fr</a></span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-upme_email_contact">
	<div class="upme-field-type"><i class="upme-icon upme-icon-at"></i><span>Email de contact</span></div>
	<div class="upme-field-value"><span>contact@rpl-vision.fr</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-upme_tel_portable">
	<div class="upme-field-type"><i class="upme-icon upme-icon-bell"></i><span>Tel portable</span></div>
	<div class="upme-field-value"><span>0675207540</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-upme_activites">
	<div class="upme-field-type"><i class="upme-icon upme-icon-none"></i><span>Activités </span></div>
	<div class="upme-field-value">Opérateur</div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-upme_scenarios">
	<div class="upme-field-type"><i class="upme-icon upme-icon-none"></i><span>Scénarios autorisés</span></div>
	<div class="upme-field-value"><span>S1, S2, S3, S4</span></div>
	</div><div class="upme-clear"></div><div class="upme-field upme-view upme-upme_activites_dgac">
	<div class="upme-field-type"><i class="upme-icon upme-icon-none"></i><span>Activité selon classement DGAC</span></div>
	<div class="upme-field-value"><span>OBS</span></div>
	</div>
	<div class="upme-clear"></div><div class="upme-field upme-view upme-upme_categorie_operateur">
	<div class="upme-field-type"><i class="upme-icon upme-icon-none"></i><span>Catégorie opérateur</span></div>
	<div class="upme-field-value"><span>Agriculture, Industriel</span></div>
	</div>
<div class="upme-clear"></div>
</div>

et integrer ces informations dans un tableau d'une ligne

chaque ligne est ensuite compiler dans une table globale et enregistré au format csv.
