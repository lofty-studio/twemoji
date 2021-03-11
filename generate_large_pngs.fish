#!/usr/local/bin/fish
mkdir -p assets/512x512
set fish_trace 1
for file in assets/svg/*
	convert $file -resize 512x assets/512x512/(basename $file .svg).png
end
set --erase fish_trace
