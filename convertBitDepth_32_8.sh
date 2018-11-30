#Change the bit depth of all files in the given folder from 32 to 8
#Requires the sox library
for D in `find . -type d` 
do 
	mkdir "$D""1"
	for f in "$D"/*.wav
	do 
	sox -v 0.99 "$f" -b 8 "$D""1/$(basename "$f")" 
	done 
done
