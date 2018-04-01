#/bin/bash
# Carlos Parodi de la Fuente
# ubuntu 16.04 
# ffmpeg 2.8.11
# convertir ficheros .webm a mp4
# convertir ficheros .mkv a mp4
# extraer audio de todos los .mp4 y guardarlo en ficheros .mp3
# extraer audio de todos los .m4a en ficheros .mp3


# convertir ficheros .webm a mp4
for file in *.webm
do
ls "$file"
ffmpeg -i "$file" -strict -2 -movflags faststart "$file".mp4
done

# convertir ficheros .mkv a mp4
for file in *.mkv
do
ls "$file"
ffmpeg -i "$file" -strict -2 -movflags faststart "$file".mp4
done

# extraer audio de todos los .mp4 y guardarlo en ficheros .mp3
for file in *.mp4
do
ls "$file"
ffmpeg -i "$file" -ab 192k "$file".mp3
done

# extraer audio de todos los .m4a en ficheros .mp3
for file in *.m4a
do
ls "$file"
ffmpeg -i "$file" -ab 192k "$file".mp3
done

