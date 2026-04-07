#!/bin/sh

if [ -d "build" ]; then
    rm -rf build
fi

# Install widget for current user
cmake -B build/plasmoid -S . -DCMAKE_INSTALL_PREFIX="$HOME/.local"
cmake --build build/plasmoid
cmake --install build/plasmoid
