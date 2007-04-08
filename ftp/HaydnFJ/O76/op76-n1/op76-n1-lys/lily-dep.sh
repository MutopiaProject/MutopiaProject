#!/bin/bash

# print to stdout all the dependencies of $@

for F in "$@"; do
    for DEP in `grep "\\include" $F`; do
        if [[ $DEP != "\\include" ]]; then
            NEXT=`echo $DEP |sed 's/"//g'`
            echo -n " $NEXT"
            sh $0 "$NEXT"
        fi
    done
done
