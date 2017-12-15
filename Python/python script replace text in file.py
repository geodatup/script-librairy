#python script replace text in file

sourceFile=c:\\in.txt
destFile=c:\\out.txt
car_to_replace=<OGRVRTDataSource>
replace_by=

# on ouvre le fichier texte source
Src = open(sourceFile,"r" ) 

# on créé un autre fichier qui contiendra les modifications
Dest = open(destFile,"w" ) 

# on stocke le contenu du fichier source dans la variable i (chaine de caractères) 
i=Src.read() 

# on remplace car_to_replace par  replace_by , le tout stocké dans la variable o
o=i.replace(car_to_replace,replace_by )

 # on écrit o dans le fichier destination
Dest.write(o)

# et on ferme les fichiers
Src.close()
Dest.close()