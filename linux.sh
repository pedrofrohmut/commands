# Find node_modules 3 of depth
find . -type d -name node_modules -maxdepth 3

# Do go inside the node_modules folders
find . -type d -name node_modules -prune

# Remove bin folder for a lot of csharp projects
find . -type d -name bin -prune -exec rm -rf {} +
