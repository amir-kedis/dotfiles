#!/bin/sh

set -e

if [ "$2" = "suspend" ] || [ "$2" = "hybrid-sleep" ]
then
    case "$1" in
        pre)
            true
            ;;
        post)
            sleep 1
            pkill -f 'chrome \-\-type=gpu-process'
            pkill -f 'slack \-\-type=gpu-process'
            ;;
    esac
fi
