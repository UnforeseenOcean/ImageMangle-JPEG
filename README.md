# ImageMangle-JPEG
A simple Batch script for ImageMagick - JPEG Generation Loss Experiment

This script is designed to show the famous generation loss experiment.
Feel free to comment, modify and use it as you please.

##How to use
1. Rename any JPG picture to file0.jpg (prep it with Denoise or GIMP to remove JPEG noise)
2. Run the script within ImageMagick directory (next to "convert.exe")
3. Now follow the on-screen instructions. This version of script supports continuing from specific point of generation.
4. Watch the magic.

#FAQ

###Q: The image shows little to no loss after all that generaions!
A: Try blurring or denoising the image first. It has been shown that images with JPG artefacts are not working with IM's compression.

###Q: Why is the resulting image rotated?
A: It is to maximize the effect of the generation loss. Currently it spews out images rotated 90 degrees to the right.
