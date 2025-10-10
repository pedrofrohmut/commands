# Add the dotnet-core plugin needed to use dotnet stuff
asdf plugin add dotnet-core

# Install dotnet 9.0.110 to asdf to be used
asdf install dotnet-core 9.0.110

# Show versions of dotnet-core that can be installed
asdf list all dotnet-core

# Sets the GLOBAL dotnet to be 8.0.120 version
asdf set -u dotnet-core 8.0.120

# Sets the LOCAL version to be 9.0.110
asdf set dotnet-core 9.0.110
