 

 

for file in  ./\*.JPG ; do  
convert "\$file" -resize 10% convert/\${file%.JPG}\_corrige.JPG  
done
