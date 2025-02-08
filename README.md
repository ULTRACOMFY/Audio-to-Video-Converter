# Audio to Video Converter
If you're like me, you're gonna have a lot of music lying around that the internet doesn't know yet. It must be uploaded to YouTube! After spending too much time trying different programs, I decided to do it myself. The program I wanted must 1) be able to convert a lot of music files at once 2) take an input image and 3) show the name of the music somewhere. This was later expanded to also show the name of the game ("Game" because I use it for video game soundtracks, but anything can work, it's just a placeholder for a variable). Can't be so hard, right? Right?

This script does just that. Currently it's quite hardcoded and isn't very dynamic. It requires a specific folder location, it will only create 1080p videos, it always exports to mp4, the text is always on the bottom right, the font is hardcoded. IF there is demand for it, I can change this in the future, but I probably won't. Anyway, if you're looking to get simple video files for your music with basic in-video titling, this script does it. It even allows you to use single quotes (apostrophes) in the Game name and the file name. Don't use other funny characters or ffmpeg might just refuse to render that line of text into your video. Hopefully this will be useful to someone. Following are the steps to make this script work:

1 Download ffmpeg.exe and place it into "D:\Programs\Audio to Video Converter".

2 Download repository to "D:\Programs\Audio to Video Converter".

3 Delete the 'Test' files from the subfolders (like "D:\Programs\Audio to Video Converter\Input Audio\Test").

4 Get a font file to use and place it into "D:\Programs\Audio to Video Converter\fontfile.ttf".


Your folder should look like this now. Note the location of your folders. If you want to place them somewhere else, the bat file needs to be updated accordingly.
![image](https://github.com/user-attachments/assets/abe335f5-098a-427b-96b4-7aa13d9ab914)

5 Replace ####FONTFILE HERE#### in the batch script with the name and file extension of your font file. There are two occurences of ####FONTFILE HERE#### in the script.

6 Place audio into Audio Input.

7 Place image into Image Input.

8 Run the batch and follow instructions.

9 Find files in Video Output.

