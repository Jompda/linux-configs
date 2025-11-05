#!/bin/bash

LINES=$(cat "$1" | wc -l)

if [[ -z "$START" ]]; then START=0; fi
if [[ -z "$END" ]]; then END=$LINES; fi

echo $LINES $START $END
tail -n $(($LINES - $START)) "$1" | head -n $(($END - $START)) - | tr ' ' '\n' | wc -l

