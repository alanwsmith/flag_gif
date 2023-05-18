#!/usr/bin/env python3

import math

canvas_width = 3800
canvas_height = 1720
total_area = canvas_width * canvas_height
frames = 33
small_area = total_area / frames

w = int(math.sqrt(small_area / (canvas_height / canvas_width)))
h = int(w * canvas_height / canvas_width)

with open("tmp1.sh", "w") as out:
    out.write("#!/bin/bash\n")
    out.write("\n")
    out.write(f"magick -size {canvas_width}x{canvas_height} canvas:white input.png\n")

    position_x = 0
    position_y = 0

    for frame in range(1,frames):
        print(f"{position_x}x{position_y}")
        move = frame * 100
        thing = f"magick convert input.png thumbs/frame-{frame}.png -gravity NorthWest -geometry {w}x{h}+{position_x}+{position_y} -composite output.png && mv output.png input.png"
        out.write(thing)
        out.write("\n")
        if position_x > canvas_width:
            position_x = 0
            position_y += h
        else:
            position_x += w



