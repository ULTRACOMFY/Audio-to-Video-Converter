@echo off
setlocal enabledelayedexpansion

echo What is the name of the game?
set /p gamename=
set "gamename=%gamename:'='\\\''%"
echo What is the name of the image file in the Input Image folder, including file extension?
set /p imagename=


for %%a in ("D:\Programs\Audio to Video Converter\Input Audio\*.*") do (
    set "file=%%~na"
	set "file=!file:'='\\\''!"
    echo !file!
	"D:\Programs\Audio to Video Converter\ffmpeg.exe" -loop 1 -i "D:\Programs\Audio to Video Converter\Input Image\%imagename%" -i "%%a" -c:v libx264 -preset veryslow -tune stillimage -crf 17 -pix_fmt yuv420p -c:a aac -shortest -strict experimental -b:a 192k -shortest -vf "scale=1920:1080:force_original_aspect_ratio=1,pad=1920:1080:(( (ow - iw)/2 )):(( (oh - ih)/2 )), drawtext=fontfile=####FONTFILE HERE####:text='!file!':fontcolor=white:fontsize=50:x=w-tw-40:y=h-th-40,  drawtext=fontfile=####FONTFILE HERE####:text='%gamename%':fontcolor=white:fontsize=50:x=w-tw-40:y=h-th-100" "D:\Programs\Audio to Video Converter\Output Video\%%~na.mp4"
)
pause
