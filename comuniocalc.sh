#!/bin/zsh

# You have to copy the content of your comunio news page manually (No idea how to crawl it automatically), and copy it to a file
# This is the german version ("von" and "zu" in $FROMPLAYER and $TOPLAYER have to be updated.
# I think, this is zsh-only. I will write a python3 version soon.

PLAYER="username"
FROMPLAYER="von $PLAYER"
TOPLAYER="zu $PLAYER"
FILE="/tmp/comunio"
POINTS=35
STARTBUDGET=20000000

FROM=$(sed "s:\.::g" $FILE | grep $FROMPLAYER | grep -o "[0-9]*" | awk '{ SUM += $1} END { print SUM }')
TO=$(sed "s:\.::g" $FILE | grep $TOPLAYER | grep -o "[0-9]*" | awk '{ SUM += $1} END { print SUM }') 

(( ERG=$STARTBUDGET+$FROM-$TO+$POINTS*10000 ))
echo $ERG
