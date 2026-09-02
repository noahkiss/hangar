# Hangar build commands. `just` with no args lists recipes.

set quiet

_default:
    just --list --unsorted

# compile the solution
build:
    dotnet build

# run the test suite
test:
    dotnet test

# serve on the pinned dev port
run:
    dotnet run --project src/Hangar --urls http://0.0.0.0:6414

# hot-reload dev loop
watch:
    dotnet watch --project src/Hangar run --urls http://0.0.0.0:6414
