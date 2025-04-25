#!/bin/sh

command=$1

case $command in
    current)
        while true; do
            lang=`hyprctl devices -j | jq -r '.keyboards[] | .active_keymap' | tail -n1 | cut -c1-2 | tr 'a-z' 'A-Z'`
            printf '{"status": "%s", "lang": "%s"}\n' \
                "none" "${lang}"
            sleep 0.2
        done
    ;;
    switch)
        hyprctl \
        --batch "$(
            hyprctl devices -j |
            jq -r '.keyboards[] | .name' |
            while IFS= read -r keyboard; do
                printf '%s %s %s;' 'switchxkblayout' "${keyboard}" 'next'
            done
        )"
    ;;
    *)
    ;;
esac