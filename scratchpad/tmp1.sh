#!/bin/bash

magick -size 3800x1720 canvas:white input.png
magick convert input.png thumbs/frame-1.png -gravity NorthWest -geometry 661x299+0+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-2.png -gravity NorthWest -geometry 661x299+661+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-3.png -gravity NorthWest -geometry 661x299+1322+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-4.png -gravity NorthWest -geometry 661x299+1983+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-5.png -gravity NorthWest -geometry 661x299+2644+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-6.png -gravity NorthWest -geometry 661x299+3305+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-7.png -gravity NorthWest -geometry 661x299+3966+0 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-8.png -gravity NorthWest -geometry 661x299+0+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-9.png -gravity NorthWest -geometry 661x299+661+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-10.png -gravity NorthWest -geometry 661x299+1322+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-11.png -gravity NorthWest -geometry 661x299+1983+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-12.png -gravity NorthWest -geometry 661x299+2644+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-13.png -gravity NorthWest -geometry 661x299+3305+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-14.png -gravity NorthWest -geometry 661x299+3966+299 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-15.png -gravity NorthWest -geometry 661x299+0+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-16.png -gravity NorthWest -geometry 661x299+661+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-17.png -gravity NorthWest -geometry 661x299+1322+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-18.png -gravity NorthWest -geometry 661x299+1983+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-19.png -gravity NorthWest -geometry 661x299+2644+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-20.png -gravity NorthWest -geometry 661x299+3305+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-21.png -gravity NorthWest -geometry 661x299+3966+598 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-22.png -gravity NorthWest -geometry 661x299+0+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-23.png -gravity NorthWest -geometry 661x299+661+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-24.png -gravity NorthWest -geometry 661x299+1322+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-25.png -gravity NorthWest -geometry 661x299+1983+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-26.png -gravity NorthWest -geometry 661x299+2644+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-27.png -gravity NorthWest -geometry 661x299+3305+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-28.png -gravity NorthWest -geometry 661x299+3966+897 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-29.png -gravity NorthWest -geometry 661x299+0+1196 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-30.png -gravity NorthWest -geometry 661x299+661+1196 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-31.png -gravity NorthWest -geometry 661x299+1322+1196 -composite output.png && mv output.png input.png
magick convert input.png thumbs/frame-32.png -gravity NorthWest -geometry 661x299+1983+1196 -composite output.png && mv output.png input.png
