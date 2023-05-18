#!/usr/bin/env python3

import math
import subprocess

frames = 8000 # TODO: automate this

initial_width = int(subprocess.run(
    ['identify', '-format', '%w', 'thumbs/frame-1.jpg'],
    capture_output=True,
).stdout.decode('utf-8'))

initial_height = int(subprocess.run(
    ['identify', '-format', '%h', 'thumbs/frame-1.jpg'],
    capture_output=True,
).stdout.decode('utf-8'))

canvas_width = 2000
canvas_height = int(canvas_width / initial_width * initial_height)

canvas_area = canvas_width * canvas_height
thumb_area = canvas_area / frames 

w = int(math.sqrt(thumb_area / (canvas_height / canvas_width)))
h = int(w * canvas_height / canvas_width)

position_x = 0
position_y = 0

# make the blank starting canvas
prep_it = [
            "magick", 
            "-size", 
            f"{canvas_width + 100}x{canvas_height + 100}", 
            "canvas:rgb(0,0,1)", 
            "input.jpg"
        ]
subprocess.run(prep_it)

for frame in range(1, frames):
    print(f"Frame: {frame}")
    make_it = [
            "magick",  
            "convert", 
            "input.jpg", 
            f"thumbs/frame-{frame}.jpg",
            "-gravity", 
            "NorthWest", 
            "-geometry", 
            f"{w}x{h}+{position_x + 50}+{position_y + 50}", 
            "-composite", "output.jpg"
            ]
    subprocess.run(make_it)
    move_it = [
            "mv",
            "output.jpg",
            "input.jpg"
            ]
    subprocess.run(move_it)
    if position_x > canvas_width:
        position_x = 0
        position_y += h
    else:
        position_x += w


