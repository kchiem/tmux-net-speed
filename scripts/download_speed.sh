#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/helpers.sh"

main()
{
    # TODO make configurable
    #local file=$(get_tmux_option $DOWNLOAD_FILE)
    local file=$DOWNLOAD_FILE
    local old_val=$(read_file $file)
    local new_val=$(sum_speed 0)

    write_file $file $new_val
    local vel=$(get_velocity $new_val $old_val)

    ## Format output
    local format=$(get_tmux_option @download_speed_format "%s")
    printf "$format" "$vel"
}
main

