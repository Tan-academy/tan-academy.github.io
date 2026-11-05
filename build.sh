#!/bin/sh
# Builds docs/index.html (served by GitHub Pages) from index.html (the page source).
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat index.html
  printf '\n%s\n' '</body>' '</html>'
} > docs/index.html
echo "Built docs/index.html"
