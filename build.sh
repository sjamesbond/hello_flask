#!/bin/bash

usage() { echo "Usage: $0 [-n <image_name>] [-t <tag>]" 1>&2; exit 1; }

while getopts ":t:p:" o; do
    case "${o}" in
        t)
            tag=${OPTARG}
            ;;
        n)
            name=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

sudo docker build -t $name:$tag .
