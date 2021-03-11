#!/usr/local/bin/fish
mkdir -p assets/512x512
set fish_trace 1
for file in assets/svg/*
	inkscape -w 512 $file -o assets/512x512/(basename $file .svg).png
end
set --erase fish_trace
