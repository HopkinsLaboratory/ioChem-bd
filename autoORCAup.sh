#!/bin/bash
#` -pe smp* 12
#$ -N test
#$ -cwd

for s in "$@"
do
        basename=${s%'.inp'}
        input=s
        output="$basename.out"
        bbase=${basename%'_OptFreq'}

        echo $bbase
        loadorca -i $input -o $output -n $bbase -d OptFreq
done

