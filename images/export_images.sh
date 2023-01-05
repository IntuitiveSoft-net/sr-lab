#!/bin/bash
read -p "Export the diagram until : " i
i=$(($i-1))
for n in $(seq 0 $i); do
    /Applications/draw.io.app/Contents/MacOS/draw.io -x -f svg -p $n lab-topologies.drawio -o $(($n+1)).svg;
done