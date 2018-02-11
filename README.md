# Dark-Emoji

![Image of Dark Emoji 2](https://github.com/jpavley/Dark-Emoji/blob/master/app-art/detail-view/dv-dark-emoji-0002%402x.png)

Early in 2018 Apple started rejecting apps that used Apple Emoji Font emoji as user interface elements. This change in policy or enforcement of existing policy meant that my apps, Emoji Tac Toe and Emoji Spy, were no longer acceptable for publishing in the Apple App Store. And that's fine. It' Apple artwork and its Apple's store. Thus, I needed replacement emoji art if I wanted to continue my exploration of emoji.

I looked around at open source and creative commons alternative and I was not happy. Most of these lookedlike hasty imitations of Apple's originals. And most had some kind of low res base version licensed for free with high res and vector behind a paid license. What I wanted were origianl stylish emoji with a true open source license. 

So here we are! I started drawing my own interpretation of emoji under the MIT license.

This is the start of a big project. In addition to vector art and multiple resolution images for over 2000 emoji I need to write tools to manage all this mess. Right now, I'm using these new emoji as images but I plan on making a proper Dark Emoji Font in Apple and Google color type formats. 

So be patient or join in :)

## Design Idea

![Image of Dark Emoji 12](https://github.com/jpavley/Dark-Emoji/blob/master/app-art/detail-view/dv-dark-emoji-0012%402x.png)


Traditional emoji are bright, sunny, and cute. Dark Emoji for dark, gothic, and cute. Dark Emoji are not a replacement for traditional emoji--they represent a different emotional tone. Sometimes you want to LOL in a darker vein. Sometime you're crying scarlet tears. Sometime the mortality of all things infuses your mood and gives it a deep bass undertone of meaning to the trivial communications of life.

Long term, spectrum of human emotion can't be contained by yellow smileyes and yellow people. I think, in addition to thousands of more emoji, we need to enhance our textual communication with dozens of emoji fonts. An emoji font for every color on the emotional rainbow. There are a billion kinds of happy and sad. Yellow can't do justice to more than one.

## Technical Notes

![Image of Dark Emoji 27](https://github.com/jpavley/Dark-Emoji/blob/master/app-art/detail-view/dv-dark-emoji-0027%402x.png)

I'm using a commercial macOS app called [Graphics](http://www.graphic.com) to design and implement Dark Emoji. It's not open source and it's not made by Adobe but I'm really happy with it. Its fast and reliable and has great export options, including SVG, PNG, and Swift Code.

I'm creating vector graphics with Graphics and exporting them as three sets of iOS compatible PNG files: 25x25 (button sized), 60x60 (table view sized), 200x200 (detail view size). I'm not doing anything crazy with the color palette. Its whatever Graphics has as the default.

Soon, I'll export SVG graphics, support Android, create actual color fonts, and write a suite of shell scripts to automate the production process.
