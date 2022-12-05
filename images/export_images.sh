#!/bin/bash
read -p "Export the diagram until : " i
i=$(($i-1))
for n in $(seq 0 $i); do
    /Applications/draw.io.app/Contents/MacOS/draw.io -x -f png -p $n lab-topologies.drawio -o $(($n+1)).png;
done