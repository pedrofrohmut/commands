# Creat a project from mvc template with name My.Web
dotnet new mvc --name My.Web

# Create a classlib project with name My.Domain
dotnet new classlib My.Domain

# Create a new solution
dotnet new sln

# Add all the projects in the directory to the solution
dotnet sln add **/*.csproj

# Build the solution and projects added to it
dotnet build

# Search for packages on nuget
dotnet package search EntityFrameworkCore

# Add package to project
dotnet add ./My.Web package Npgsql.EntityFrameworkCore.PostgreSQL
dotnet add ./My.Web package Microsoft.EntityFrameworkCore.Design

# With version specified
dotnet add package Microsoft.EntityFrameworkCore.Design --version 8.0.8
dotnet add package Npgsql.EntityFrameworkCore.PostgreSQL --version 8.0.8

# References
dotnet add ./My.Infrastructure reference ./My.Domain

# Create a local manifest to use dotnet tool
dotnet new tool-manifest

# Install dotnet entity framework migration tool locally with version 8.0.8
dotnet tool install --local dotnet-ef --version 8.0.8 --allow-downgrade

# Update database (apply migrations if needed)
dotnet ef database update --project WhiteLagoon.Web

# Add initial migration (have to provide the dbContext project with -p and startup project -s)
dotnet ef migrations add Initial -p ./WhiteLagoon.Infrastructure -s ./WhiteLagoon.Web
