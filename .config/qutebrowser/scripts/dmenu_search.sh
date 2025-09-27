#!/bin/bash

HIST="$HOME/.config/qutebrowser/scripts/searchhistory.txt"

# Show history in dmenu (newest first)
if [ -f "$HIST" ]; then
    query=$(tac "$HIST" | fuzzel --dmenu)
else
    query=$(fuzzel --dmenu)
fi

if [ -n "$query" ]; then
    # Save to history if not already present
    grep -Fxq "$query" "$HIST" 2>/dev/null || echo "$query" >> "$HIST"
    qutebrowser ":search $query"
fi