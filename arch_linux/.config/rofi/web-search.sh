#!/bin/bash
if [ -z "$@" ]; then
    echo "🌐 Search Web..."
else
    xdg-open "https://duckduckgo.com/?q=$@" >/dev/null 2>&1
fi
