@echo off
echo Simple Generation Loss showcase using ImageMagick
echo Image should be JPG with name file0.(extension).
echo Result is a very lossy JPG where the details are lost and distorted.
echo Note: images are rotated every generation to maximize the effect. You might need to re-rotate them if you need to import them back to video editors.
echo Note: Some types of JPG doesn't seem to work so well with this loop. In that case, remove JPEG compression artifact with GIMP or Photoshop, save, then retry.
echo You might need to get to 1000+ generations to get a meaningful result.
echo.
set /p countin=Set starting position (Type 0 to start over): 
set /p countout=Type previous number same as above: 
set /p countpngi=Type previous number same as above: 
set /p countpngo=Set offset (Starting position plus 1): 
set /p stopcount=Stop after nth file: (Type desired range, minimum 1): 
set /p delcache=Type starting position here: 
:start
set /a qualityjpg=%RANDOM% * (100 - 50 + 1) / 32768 + 50
convert -quality 0 -rotate 90 file%countin%.jpg ufile%countout%.png
convert -quality %qualityjpg% ufile%countpngi%.png file%countpngo%.jpg
set /a countin=%countin%+1
set /a countout=%countout%+1
set /a countpngi=%countpngi%+1
set /a countpngo=%countpngo%+1
set /a delcache=%countpngi%-1
del ufile%delcache%.png
if exist file%stopcount%.jpg (goto stop) else goto start
:stop
pause
