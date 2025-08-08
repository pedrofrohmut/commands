# Count the lines to all my go files
find ./foo -iname "*.go" -print0 | xargs -0 wc --lines
