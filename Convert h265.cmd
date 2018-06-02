@ECHO OFF
for %%f in (d:\_ffmpeg\original\TV\*.mkv) DO ffmpeg -i "%%f" -map 0:v -c:v libx264 -preset slow -crf 22 -map 0:a -c:a copy -strict -2 -c:a aac d:\_ffmpeg\converted\%%~nf.mp4 2> d:\_ffmpeg\logs\%%~nf.log
for %%f in (d:\_ffmpeg\original\TV\*.mp4) DO ffmpeg -i "%%f" -map 0:v -c:v libx264 -preset slow -crf 22 -map 0:a -c:a copy -strict -2 -c:a aac d:\_ffmpeg\converted\%%~nf.mp4 2> d:\_ffmpeg\logs\%%~nf.log
exit

