#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

main()
{
    local speed=$(get_speed 2)

    ## Format output
    local format=$(get_tmux_option @upload_speed_format "%s")
    printf "$format" "$speed"
}
main

