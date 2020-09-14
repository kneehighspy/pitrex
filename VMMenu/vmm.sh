#!/bin/bash

echo $1
echo $2

game="${1,,}"
if [[ $game == *.vec ]] || [[ $game == *.gam ]] || [[ $game == *.bin ]]
then
   echo "Vectrex Game Selected"
   echo "Command Line: ../vecx.emulated/vecx \"$1\""
   # /usr/local/bin/advmess vectrex -cart "$1"
   pushd ../vecx.emulated
   ./vecx "$1"
   popd
else
    echo "Mame Game Selected"
    echo "Command Line: /usr/local/bin/advmame $1 $2"
    /usr/local/bin/advmame $1 $2
fi
