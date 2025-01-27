#! /usr/bin/env mulle-bash

#!/bin/bash

process_file()
{
    local in_frontmatter=0
    local title=""
    
    printf -- "---\n"
    printf "layout: post\n"
    
    while IFS= read -r line; do
        if [[ $line == "---" ]]; then
            if ((in_frontmatter == 0)); then
                in_frontmatter=1
                continue
            else
                in_frontmatter=0
                printf "image:\n"
                printf "  feature: \"images/features/%s.png\"\n" "$(basename "$1" .md)"
                printf -- "---\n"
                continue
            fi
        fi
        
        if ((in_frontmatter == 1)); then
            if [[ $line =~ ^title: ]]; then
                title=${line#title: }
                printf "title: \"%s\"\n" "$title"
            fi
        else
            printf "%s\n" "$line"
        fi
    done
}

cat "$1" | process_file "$1"
