convert Screenshot icons1.png -crop 2x5@ +repage icon_%d.png
convert Screenshot icons2.png -crop 3x3@ +repage icon_%d.png


convert icon_1.png -trim -gravity center -extent 256x256 cleaned_icon_1.png
convert icon_0.png -trim -gravity center -extent 256x256 cleaned_icon_0.png

convert icon_6.png -trim -gravity center -extent 256x256 cleaned_icon_6.png

convert icon_2.png -trim -gravity center -extent 256x256 cleaned_icon_2.png
convert icon_7.png -trim -gravity center -extent 256x256 cleaned_icon_7.png
