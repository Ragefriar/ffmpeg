@ECHO OFF
REM Convert Movie from MKV to MP4 (Suitable for DTS - Creates AC3 backup)
REM for %%f in (d:\_ffmpeg\original\Movies\*.mkv) DO ffmpeg -i "%%f" -map 0:0 -map 0:1 -map 0:1 -c:v copy -c:a:0 ac3 -b:a 640k -c:a:1 copy -c:s mov_text d:\_ffmpeg\converted\%%~nf.mp4 2> d:\_ffmpeg\logs\%%~nf.log


REM Convert Movie from MKV to MP4 (Suitable for TrueHD)
for %%f in (d:\_ffmpeg\original\Movies\*.mkv) DO ffmpeg -i "%%f" -map 0:0 -map 0:1 -c:v copy -c:a ac3 -b:a 640k d:\_ffmpeg\converted\%%~nf.mp4 2> d:\_ffmpeg\logs\%%~nf.log


REM Convert AVI TV to MP4
for %%f in (d:\_ffmpeg\original\TV\*.avi) DO ffmpeg -i "%%f" -map 0 -c:v libx264 -preset slow -crf 20 -c:a aac -b:a 128k d:\_ffmpeg\converted\%%~nf.mp4 2> d:\_ffmpeg\logs\%%~nf.log


REM Convert MKV TV to MP4
for %%f in (d:\_ffmpeg\original\TV\*.mkv) DO ffmpeg -i "%%f" -map 0 -c:v copy -c:s mov_text -c:a ac3 -b:a 384k d:\_ffmpeg\converted\%%~nf.mp4 2> d:\_ffmpeg\logs\%%~nf.log
exit