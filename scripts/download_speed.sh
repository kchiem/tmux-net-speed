#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

main()
{
    local speed=$(get_speed 1)

    ## Format output
    local format=$(get_tmux_option @download_speed_format "%s")
    printf "$format" "$speed"
}
main

