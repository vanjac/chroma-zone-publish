#!/bin/sh
set -eu

body=$(curl -s "https://api.github.com/repos/$1/releases/latest" | jq -r .body)

cat <<EOF
---
pagetitle: Download
links:
  -
    title: Other versions
    url: https://github.com/$1/releases
---
$body
EOF
