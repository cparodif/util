#/bin/bash
# Carlos Parodi de la Fuente
# ubuntu 16.04 
# ffmpeg 2.8.11
# convertir ficheros .webm a mp4
# convertir ficheros .mkv a mp4
# extraer audio de todos los .mp4 y guardarlo en ficheros .mp3
# extraer audio de todos los .m4a en ficheros .mp3
# debe estar instalado ffmpeg
# sudo apt install ffmpeg


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


# ffmpeg -i 0.mp4 -ss 00:00:00 -t 00:18:00 -filter_complex "[0:v]setpts=0.80*PTS[v];[0:a]atempo=1.25[a]" -map "[v]" -map "[a]" 1.mp4
# aumentar la velocidad de reproducción  desde el principio, durante 18 minutos, sin modificar codecs original 0.mp4 salida 1.mp4
