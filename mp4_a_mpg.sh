#/bin/bash

# Extraer audio de todos los .mp4 en ficheros .mp3 (opcional descomentando línea 9)
# y convertir los mp4 a mpg
for file in *.mp4
do
ls "$file"

#ffmpeg -i "$file" -ab 192k "$file".mp3
ffmpeg -i "$file" -c:v mpeg2video -q:v 5 -c:a mp2 -f vob -r 25 -y -s 720x576 -ab 192k -ar 48000 "$file".mpg

done
