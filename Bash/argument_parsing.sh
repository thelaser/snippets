#!/bin/bash

# template taken from guneysus's answer in https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash

for i in "$@"
do
case $i in
    -p=*|--prefix=*)
    PREFIX="${i#*=}"

    ;;
    -s=*|--searchpath=*)
    SEARCHPATH="${i#*=}"
    ;;
    -l=*|--lib=*)
    DIR="${i#*=}"
    ;;
    --default)
    DEFAULT=YES
    ;;
    *)
            # unknown option
    ;;
esac
done

echo PREFIX = ${PREFIX}
echo SEARCH PATH = ${SEARCHPATH}
echo DIRS = ${DIR}
echo DEFAULT = ${DEFAULT}
