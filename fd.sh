# Find all files by extension (javascript example)
fd -e js
fd --extension js

# Remove all javascript files
fd -e js -X rm
fd --extension js --exec rm
