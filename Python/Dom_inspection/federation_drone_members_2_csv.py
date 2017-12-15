from htmldom import htmldom
import urllib 
import csv

# initialisation du writer csv
with open('fede_drone_members.csv', 'w', newline='') as csvfile:
	c = csv.writer(csvfile, delimiter=';')
	# on créer une entete de colonne 
	c.writerow(["nom_dir","prenom_dir", "entreprise", "Adresse","CP", "Ville", "Telephone","site","Courriel","tel_mobile","activites","upme_scenarios","upme_activites_dgac","upme_categorie_operateur"])
	# création du DOM
	dom = htmldom.HtmlDom( "http://www.federation-drone.org/les-membres-de-la-federation/operateurs/" ).createDom()
	# On récupère dans a les objets a des div de class = upme-field-name
	a = dom.find("div.upme-field-name a")
	# on en fait un dom
	for link in a:
		# on encode le texte en url valid
		url= urllib.parse.quote(link.attr( "href" ),safe='/:')
		print (url)
		# on créé le DOM de la page profil à partir de l'url obtenue précédement
		dom_members = htmldom.HtmlDom( url ).createDom()
		# on récupère le nom du dirigeant
		name_dir = dom_members.find("div.upme-billing_last_name div.upme-field-value span").text()
		print ( "nom dir" +" : " + name_dir )
		firstname_dir = dom_members.find("div.upme-billing_first_name div.upme-field-value span").text()
		print ( "prenom dir" +" : " + firstname_dir) 
		company = dom_members.find("div.upme-billing_company div.upme-field-value span").text()
		print ( "entreprise" +" : " + company )
		billing_address_1 = dom_members.find("div.upme-billing_address_1 div.upme-field-value span").text()
		print ( "addresse" +" : " + billing_address_1 )
		billing_postcode = dom_members.find("div.upme-billing_postcode div.upme-field-value span").text()
		print ( "CP" +" : " + billing_postcode )
		billing_city = dom_members.find("div.upme-billing_city div.upme-field-value span").text()
		print ( "Ville" +" : " + billing_city )
		billing_phone = dom_members.find("div.upme-billing_phone div.upme-field-value span").text()
		print ( "Tel" +" : " + billing_phone )
		user_url = dom_members.find("div.upme-user_url div.upme-field-value span").text()
		print ( "user_url" +" : " + user_url )
		upme_email_contact = dom_members.find("div.upme-upme_email_contact div.upme-field-value span").text()
		print ( "upme_email_contact" +" : " + upme_email_contact )
		upme_tel_portable = dom_members.find("div.upme-upme_tel_portable div.upme-field-value span").text()
		print ( "upme_tel_portable" +" : " + upme_tel_portable )
		upme_activites = dom_members.find("div.upme-upme_activites div.upme-field-value span").text()
		print ( "upme_activites" +" : " + upme_activites )
		upme_scenarios = dom_members.find("div.upme-upme_scenarios div.upme-field-value span").text()
		print ( "upme_scenarios" +" : " + upme_scenarios )
		upme_activites_dgac = dom_members.find("div.upme-upme_activites_dgac div.upme-field-value span").text()
		print ( "upme_activites_dgac" +" : " + upme_activites_dgac )
		upme_categorie_operateur = dom_members.find("div.upme-upme_categorie_operateur div.upme-field-value span").text()
		print ( "upme_categorie_operateur" +" : " + upme_categorie_operateur )
		# ecrire la ligne dans le fichier csv
		c.writerow([name_dir,firstname_dir, company, billing_address_1,billing_postcode, billing_city, billing_phone, user_url,upme_email_contact,upme_tel_portable,upme_activites,upme_scenarios,upme_activites_dgac,upme_categorie_operateur])
