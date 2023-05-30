#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

main()
{
    # calls within $() are in subprocess shells, run first to cache values
    get_speed 1 >/dev/null
    local download=$(get_speed 1 1)
    local upload=$(get_speed 2 1)

    ## Format output
    local format=$(get_tmux_option @net_speed_format "D:%10s U:%10s")
    printf "$format" "$download" "$upload"
}
main
