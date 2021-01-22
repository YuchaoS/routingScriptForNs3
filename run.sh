#!/bin/bash
script="scratch/routingScriptForNs3/routingScriptForNs3.cc"
outputFileNameBase="routinng"


nSinks=(5 10)
protocols=(1 2)
speeds=(1)
for item in ${nSinks[@]}
do
    for proto in ${protocols[@]}
    do
        for speed in ${speeds[@]}
        do
        fileName=$outputFileNameBase"-"$proto"-"$item"-"$speed".csv"
        ./waf --run "scratch/routingScriptForNs3/routingScriptForNs3.cc --nSinks=${item} --protocol=${proto} --nodeSpeed=${speed} --CSVfileName=${fileName}"
        done
    done
done
